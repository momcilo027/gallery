<?php

class Paginate{
  public $current_page;
  public $items_pp;
  public $items_count;

  public function __construct($page=1, $items_pp=12, $items_count=0){
    $this->current_page = (int)$page;
    $this->items_pp = (int)$items_pp;
    $this->items_count = (int)$items_count;
  }


  public function next(){
    return $this->current_page + 1;
  }


  public function previous(){
    return $this->current_page - 1;
  }


  public function total(){
    return ceil($this->items_count / $this->items_pp);
  }


  public function has_previous(){
    return $this->previous() > 0 ? true : false;
  }


  public function has_next(){
    return $this->next() <= $this->total() ? true : false;
  }


  public function offset(){
    return ($this->current_page - 1) * $this->items_pp;
  }


}

 ?>
