<?php

//
// PostgreSQL DB abstraction class
// (c) phpBB Dev Team (P. Owen) 2001
//
if(!defined("SQL_LAYER")){

define("SQL_LAYER","postgresql");

class sql_db {

   var $db_connect_id;
   var $query_result;
   var $row;
   var $rownum = array();
   //
   // Constructor
   //
   function sql_db($sqlserver, $sqluser, $sqlpassword, $database, $persistency=true){

      $this->connect_string = "";
      if($sqluser){
         $this->connect_string .= "user=$sqluser ";
      }
      if($sqlpassword){
         $this->connect_string .= "password=$sqlpassword ";
      }
      if($sqlserver){
         if(ereg(":",$sqlserver)){
            list($sqlserver,$sqlport) = split(":",$sqlserver);
            $this->connect_string .= "host=$sqlserver port=$sqlport ";
         } else {
            $this->connect_string .= "host=$sqlserver ";
         }
      }
      if($database){
         $this->dbname = $database;
         $make_connect = $this->connect_string . "dbname=$database";
      } else {
         $make_connect = $this->connect_string;
      }
      $this->persistency = $persistency;

      if($this->persistency){
         $this->db_connect_id = @pg_pconnect($make_connect);
      } else {
         $this->db_connect_id = @pg_connect($make_connect);
      }
      return $this->db_connect_id;
   }
   //
   // Other base methods
   //
   function sql_setdb($database){
      if($this->db_connect_id){
         if($this->query_result){
            @pg_freeresult($this->query_result);
            unset($this->query_result);
            unset($this->row);
         }
         $result = @pg_close($this->db_connect_id);
         if($result){
            $this->dbname = $database;
            $make_connect = $this->connect_string . "dbname=$database";
            if($this->persistency){
               $this->db_connect_id = @pg_pconnect($make_connect);
            } else {
               $this->db_connect_id = @pg_connect($make_connect);
            }
         }
      }
      return $this->db_connect_id;
   }
   function sql_close(){
      if($this->db_connect_id){
         if($this->query_result){
            @pg_freeresult($this->query_result);
         }
         $result = @pg_close($this->db_connect_id);
         return $result;
      } else {
         return false;
      }
   }


   //
   // Query method
   //
   function sql_query($query=""){
      // Remove any pre-existing queries
      unset($this->query_result);
      if($query != ""){
         $this->query_result = @pg_exec($this->db_connect_id, $query);
         if($this->query_result){

            $this->last_query_text[$this->query_result] = $query;
            $this->rownum[$this->query_result] = 0;
            unset($this->row[$this->query_result]);
            unset($this->rowset[$this->query_result]);

            return $this->query_result;
         } else {
            return false;
         }
      } else {
         return 0;
      }
   }
   //
   // Other query methods
   //
   function sql_numrows($query_id = 0){
      if(!$query_id)
         $query_id = $this->query_result;
      if($query_id){
         $result = @pg_numrows($query_id);
         return $result;
      } else {
         return false;
      }
   }
   function sql_numfields($query_id = 0){
      if(!$query_id)
         $query_id = $this->query_result;
      if($query_id){
         $result = @pg_numfields($query_id);
         return $result;
      } else {
         return false;
      }
   }
   function sql_fieldname($offset, $query_id = 0){
      if(!$query_id)
         $query_id = $this->query_result;
      if($query_id){
         $result = @pg_fieldname($query_id, $offset);
         return $result;
      } else {
         return false;
      }
   }
   function sql_fieldtype($offset, $query_id = 0){
      if(!$query_id)
         $query_id = $this->query_result;
      if($query_id){
         $result = @pg_fieldtype($query_id, $offset);
         return $result;
      } else {
         return false;
      }
   }
   function sql_fetchrow($query_id = 0){
      if(!$query_id)
         $query_id = $this->query_result;
      if($query_id){
         $this->row = @pg_fetch_array($query_id, $this->rownum[$query_id]);
         if($this->row)
            $this->rownum[$query_id]++;
         return $this->row;
      } else {
         return false;
      }
   }
   function sql_fetchrowset($query_id = 0){
      if(!$query_id)
         $query_id = $this->query_result;
      if($query_id){
         unset($this->rowset[$query_id]);
         unset($this->row[$query_id]);
         $this->rownum[$query_id] = 0;
         while($this->rowset = @pg_fetch_array($query_id, $this->rownum[$query_id])){
            $result[] = $this->rowset;
            $this->rownum[$query_id]++;
         }
         return $result;
      } else {
         return false;
      }
   }
   function sql_fetchfield($field, $row_offset=-1, $query_id = 0) {
      if(!$query_id)
         $query_id = $this->query_result;
      if($query_id){
         if($row_offset != -1){
            $this->row = @pg_fetch_array($query_id, $row_offset);
         } else {
            if($this->rownum[$query_id]){
               $this->row = @pg_fetch_array($query_id, $this->rownum[$query_id]-1);
            } else {
               $this->row = @pg_fetch_array($query_id, $this->rownum[$query_id]);
               if($this->row)
                  $this->rownum[$query_id]++;
            }
         }
         $result = $this->row[$field];
         return $result;
      } else {
         return false;
      }
   }
   function sql_rowseek($offset, $query_id = 0){
      if(!$query_id)
         $query_id = $this->query_result;
      if($query_id){
         if($offset>-1){
            $this->rownum[$query_id] = $offset;
            return true;
         } else {
            return false;
         }
      } else {
         return false;
      }
   }
   function sql_nextid($query_id = 0){
      if(!$query_id)
         $query_id = $this->query_result;
      if($query_id && $this->last_query_text[$query_id] != ""){
         if(eregi("^(INSERT{1}|^INSERT INTO{1})[[:space:]][\"]?([[:alnum:]]+)[\"]?", $this->last_query_text[$query_id], $tablename);
            $query = "SELECT last_value FROM ".$tablename[2]."_id_seq";
            $temp_q_id =  @pg_exec($this->db_connect_id, $query);
            if($query_id){
               $temp_result = @pg_fetch_array($temp_q_id, 0);
               if($temp_result){
                  return $temp_result["last_value"]+1;
               } else {
                  return false;
               }
            } else {
               return false;
            }
         } else {
            return false;
         }
      } else {
         return false;
      }
   }
   function sql_freeresult($query_id = 0){
      if(!$query_id)
         $query_id = $this->query_result;
      if($query_id){
         $result = @pg_freeresult($query_id);
         return $result;
      } else {
         return false;
      }
   }
   function sql_error($query_id = 0){
      if(!$query_id)
         $query_id = $this->query_result;
      $result[message] = @pg_errormessage($query_id);
      $result[code] = -1;
      return $result;
   }

} // class ... db_sql

} // if ... defined

?>