<?php

namespace Laetitia_Bernardi\projet4\Model;

require_once('models/Manager.php');

use \DateTime;
use \PDO;


class UserManager extends Manager
{
    private $id,$id_group, $pseudo, $pass;


    public function __construct()
    {

    }

    public function getId()
    {
        return $this->id;
    }



    public function getPseudo()
    {
        return $this->pseudo;
    }

  
    public function getPass()
    {
        return $this->pass;
    }


    public function setId($id)
    {
        $id = (int) $id;
        if($id> 0){
            $this->id = $id;
        }

    }

  
    public function setPseudo($pseudo)
    {
        if(is_string($pseudo)) {
            $this->pseudo = $pseudo;
        }
    }


    public function setPass($pass)
    {
        if(is_string($pass)) {
            $this->pass = $pass;
        }
    }

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//fin des getters et setters


//recuperation des données de l'utilisateur
   public function getUser($pseudo,$pass)
    {
        $this->setPseudo($pseudo);
        $db = $this->dbConnect();
        $req = $db->query("SELECT * FROM users WHERE pseudo = '$pseudo' AND pass = PASSWORD('$pass') "); 
        $user = $req->fetch(); 
        $req->closeCursor();
    
        return $user;
    }
    
}