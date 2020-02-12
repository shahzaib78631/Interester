<?php

class TeamModel
{
    private $select = "SELECT * FROM usr INNER JOIN usr_access As `ua` ON (usr.usr_id = ua.usr_id) LEFT JOIN social_id as si ON (si.usr_id = usr.usr_id)";
    
    public function getTeam()
    {
        return Db::queryAll($this->select , array());
    }


}


?>