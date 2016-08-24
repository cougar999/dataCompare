<?php
/*!
 * $Id: mysql.php 753 2014-01-02 07:52:56Z zhoufei $
 * Copyright 2013 lvxingjie.com, Inc.
 */

class mysql {
	public static $instance = array();
	public static $RESULT_ASSOC = MYSQL_ASSOC;
	public static $RESULT_NUM = MYSQL_NUM;
	public static $RESULT_BOTH = MYSQL_BOTH;
	
	public $link = null;
	public $setting = null;

	public function __construct($setting) {
		$this->setting = $setting;
    }
    public function __destruct() {
		if ($this->link) 
			mysql::close($this->link);
    }
	
	public function query($sql, $p=array()) {
		if (!$this->link || get_resource_type($this->link) != 'mysql link') { $this->link =  mysql::open($this->setting); }
        $sql = fixPrefix($sql, $this->setting["pref"]);
		$result = mysql::sql($sql, $p, $this->link);
		$status = mysql::info($this->link, $result);
		return new mysql_queryresult($result, $status, $sql, $p, $this->link);
	}

	public function count($table, $where='', $p=array()) {
		$where = ($where == '' ? '' : ' WHERE ' . $where);
		$sql = "SELECT COUNT(*) FROM __" . $table . $where; 
		return $this->query($sql, $p)->one();
	}

	public function find($sql, $p=array(), $page=0, $size=20) {
		$length = $size ? $size : 20;
		$start = $page * $length;
		$query = $this->query($sql." LIMIT $start,$length", $p);
		return $query;
	}
	
	public function feed($sql, $p=array(), $offset=0, $leng=20) {
		$length = $size ? $size : 20;
		$start = $offset ? $offset : 0;
		$query = $this->query($sql." LIMIT $start,$length", $p);
		return $query;
	}

	public function pager($sql, $p=array(), $page=0, $size=20, $debug=false) {
		$pattern = "/^SELECT(.*)FROM/";
		$replace = "SELECT COUNT(*) AS count FROM";
		$sql = preg_replace($pattern, $replace, $sql);
		if ($debug) {
			$all = $this->query($sql, $p)->debug()->one();
		} else {
			$all = $this->query($sql, $p)->one();
		}
		
		$pages = array();
		$page = $page == '' || $page == 0 ? 0 : (int)$page;
		$size = $size == '' || $size == 0 ? 20 : (int)$size;
		$num = (($all % $size == 0) ? (int)($all / $size) : (int)($all / $size + 1));
		for ($i = 0; $i < $num; $i++) {
			$pages[$i] = $i + 1;
		}
		
		$paging = array();
		if ($page < 0) $page = 0;
		if ($page > $num) $page = $num;
		$paging['count'] = $all;
		$paging['num'] = $num;
		$paging['index'] = $page;
		$paging['size'] = $size;
		$paging['row'] = $page * $size;
		$paging['start'] = $page * $size + 1;
		$paging['end'] = $page * $size + ($page < $num-1 ? $size : $all % $size);
		$paging['page'] = $num == 0 ? 0 : $page + 1;
		$paging['first'] = $page <= 0 ? -1 : 0;
		$paging['prev'] = $page <= 0 ? -1 : $page - 1;
		$paging['next'] = $page >= $num-1 ? -1 : $page + 1;
		$paging['last'] = $page >= $num-1 ? -1 : $num-1;
		$paging['pages'] = $pages;
		return $paging;
	}

	public function save($table, &$data, $where='', $p=array()) {
		$sql = "SELECT * FROM `__" . $table . "` WHERE " . $where; 
		$row = $this->query($sql, $p)->first();
		if ($row) {
			unset($data['author']);
			unset($data['created']);
			$result = $this->update($table, $data, $where, $p);
			$data['author'] = $row['author'];
			$data['created'] = $row['created'];
		} else {
			$result = $this->insert($table, $data);
		}
		return $result;
	}

	public function insert($table, $data) {
		$sql = 'INSERT INTO `__' . $table . '` (' . "\r\n";
		reset($data);
		while (list($columns, ) = each($data)) {
			$sql .= '`' . $columns . '`, ';
		}
		$sql =  "\r\n" . substr($sql, 0, -2) . ') values (' . "\r\n";
		reset($data);
		while (list(, $value) = each($data)) {
			switch ((string)$value) {
				case 'now()':
				case 'NOW()':
					$sql .= 'NOW(), ';
					break;
				case 'null':
				case 'NULL':
					$sql .= 'NULL, ';
					break;
				default:
					$sql .= '\'' . fixFormat(fixInput($value)) . '\', ';
					break;
			}
		}
		$sql = substr($sql, 0, -2) . ')' . "\r\n";
        return $this->query($sql, $p);
	}

	public function update($table, $data, $where='', $p=array()) {
		$sql = 'UPDATE `__' . $table . '` SET '. "\r\n";
		reset($data);
		while (list($columns, $value) = each($data)) {
			switch ((string)$value) {
				case 'now()':
				case 'NOW()':
					$sql .= "`". $columns . '`=NOW(), ';
					break;
				case 'null':
				case 'NULL':
					$sql .= "`". $columns .= '`=NULL, ';
					break;
				default:
					$sql .= "`". $columns . '`= \'' . fixFormat(fixInput($value)) . '\', ';
					break;
			}
		}
		$sql = substr($sql, 0, -2) . "\r\n" . ' WHERE ' . $where;
		return $this->query($sql, $p);
	}

	public function delete($table, $where='', $p=array()) {
		$sql = "DELETE FROM __" . $table . " WHERE " . $where; 
		return $this->query($sql, $p);
	}

	
	public static function open($setting) {
		$link = mysql_connect($setting["host"], $setting["user"], $setting["pass"], true);
		if (!$link) { die('Could not connect mysql server, ' . mysql_error() . $setting["endc"]); }
		mysql_select_db($setting["name"], $link);
		if (function_exists('mysql_set_charset')) {
			mysql_set_charset($setting['char'], $link);
		} else {
			mysql_query("SET NAMES " . $setting['char'], $link);
		}
		return $link;
	}

	public static function sql($sql, $p=array(), &$link) {
		$query = fixSql($sql, $p);
		$result = mysql_query($query, $link);
		return $result;
	}

	public static function close(&$link) {
		if (get_resource_type($link) == 'mysql link') {
			mysql_close($link);
		}
		$link = null;
	}

	public static function error(&$link) {
		return mysql_error($link);
	}

	public static function free(&$result) {
		mysql_free_result($result);
	}

	public static function fetch(&$result, $resultType="") {
		if ($resultType == "") { $resultType = RESULT_ASSOC; }
		$row = mysql_fetch_array($result, $resultType);
		return $row;
	}

	public static function insertid(&$link) {
		return mysql_insert_id($link);
	}

	public static function info(&$link, $result) {
		if ($result) {
			$info = mysql_info($link);
		} else {
			$info = mysql_error($link);
		}
		if ($info) {
			return $info;
		} else {
			return null;
		}
	}
}

class mysql_queryresult {
	public $result = null;
	public $status = null;
	public $query = null;
	public $param = null;
	public $link = null;
	
	public function __construct(&$result, $status='', $query='', $param='', &$link=null) {
		$this->result = $result;
		$this->status = $status;
		$this->query = $query;
		$this->param = $param;
		$this->link = $link;
    }
    
    public function __destruct() {
		if (is_resource($this->result)) {
			mysql::free($this->result);
		}
    }
	
	public function result($resultType="") {
		return $this->result;
	}

	public function insertid() {
		if (!$this->link || !$this->result) { return false; }
		return mysql::insertid($this->link);
	}


	public function first($resultType="") {
		if (!$this->result) { return false; }
		$resultType = empty($resultType) ? mysql::$RESULT_ASSOC : $resultType;
		$row = mysql::fetch($this->result, $resultType);
		return $row;
	}

	public function one() {
		if (!$this->result) { return false; }
		$row = mysql::fetch($this->result, mysql::$RESULT_NUM);
		if ($row) {
			return $row[0];
		} else {
			return false;
		}
	}

	public function each($resultType="") {
		if (!$this->result) { return false; }
		$resultType = empty($resultType) ? mysql::$RESULT_ASSOC : $resultType;
		$row = mysql::fetch($this->result, $resultType);
        return $row;
	}

	public function all($resultType="") {
		$all = array();
		if (!$this->result) { return $all; }
		while ($row = $this->each($resultType)) {
			$all[] = $row;
		}
        return $all;
	}
	
	public function map($key1="", $key2=null) {
		$map = array();
		if (!$this->result) { return $map; }
		while ($row = $this->each()) {
			if ($key2 === true) {
				$map[$row[$key1]][] = $row;
			} else if ($key2) {
				$map[$row[$key1]][$row[$key2]] = $row;
			} else {
				$map[$row[$key1]] = $row;
			}
		}
		return $map;
	}

	public function status() {
		return $this->status;
	}

	public function count() {
		if (!$this->result) { return -1; }
		return mysql_num_rows($this->result);
	}

	public function debug($print=false) {
		ob_start();
		var_dump($this->result);
		$result = ob_get_contents();
		ob_end_clean();
		//echo "<pre>";
		echo 'Result:' . $result . "";
		echo 'Count:' . (is_resource($this->result) ? $this->count() : '') . "\r\n";
		echo 'Status:' . $this->status . "\r\n";
		echo 'Query:' . fixSql($this->query, $this->param) . "\r\n";
		if ($print) {
			echo 'Data:' . var_export($this->all(), true) . "\r\n";
		}
		//echo "</pre>";
		return $this;
	}
}
?>