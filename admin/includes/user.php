<?php

class User extends Db_object {

  protected static $db_table = "users";
  protected static $db_table_fields = array("username", 'password', 'first_name', 'last_name', 'user_image');
  public $id;
  public $username;
  public $password;
  public $first_name;
  public $last_name;
  public $user_image;
  public $upload_directory = "images";
  public $image_placeholder = "images/placeholder.png";

  public static function verify_user($username, $password){
    global $database;

    $username = $database->escape_string($username);
    $password = $database->escape_string($password);
    $sql = "SELECT * FROM " . self::$db_table . " WHERE username = '{$username}' AND password = '{$password}' LIMIT 1";

    $the_result_array = self::find_by_query($sql);
    return !empty($the_result_array) ? array_shift($the_result_array) : false;
  }


  public function user_image_and_ph(){
    return empty($this->user_image) ? $this->image_placeholder : $this->upload_directory.DS.$this->user_image;
  }


  public function save_user_and_photo(){
    if(!empty($this->errors)){
      return false;
    }
    if(empty($this->user_image) || empty($this->tmp_path)){
      $this->errors[] = "the file was not available";
      return false;
    }
    $target_path = SITE_ROOT . '\admin' . DS . $this->upload_directory . DS . $this->user_image;

    if(file_exists($target_path)){
      $this->errors[] = "The file {$this->user_image} already exists.";
      return false;
    }

    if(move_uploaded_file($this->tmp_path, $target_path)){
      unset($this->tmp_path);
      return true;
    } else {
      $this->errors[] = "The file directory dont have premission.";
      return false;
    }
  }


}


 ?>
