<?php
  class Resource {
    
    // we define 3 attributes
    // they are public so that we can access them using $post->author directly
    public $Resource;
    public $count  ;
    public $p_date;
    public $w_period;
    public $Resource_ID;
    
    public function __construct($Resource_ID,$Resource, $count, $p_date,$w_period) {
      $this->Resource_ID  = $Resource_ID;
      $this->Resource  = $Resource;
      $this->count  = $count;
      $this->p_date = $p_date;
      $this->w_period = $w_period;
      }
    public function  manage_resource(){
      $list = [];
      $db = Db::getInstance();
      $req = $db->query('SELECT resource_id,resource ,count, purchase_date ,warranty_period From resources ');
      foreach($req->fetchAll() as $post) {
        $list[] = new Resource($post['resource_id'],$post['resource'], $post['count'], $post['purchase_date'] ,$post['warranty_period']);
      }

      return $list;


    }

    public function add_demo($Resource){
    $db = Db::getInstance();
      $req = $db->query('Insert resource INTO demo Values("'.$Resource.'")');


    }

    

    
  }
?> 