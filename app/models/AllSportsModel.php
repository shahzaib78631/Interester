<?php

class AllSportsModel
{
    //SELECT `usr_id` AS `id`, `first_name`, `last_name`, `image` , (SELECT s.name from sports as s INNER JOIN usr_sports as us ON (id = us.usr_id) WHERE us.usr_id = usr.usr_id) FROM usr
    private $select = "SELECT usr.usr_id as `id`, `first_name`, `last_name`, `image`, sports.name as `sport` FROM usr INNER JOIN usr_sports as us ON (usr.usr_id = us.usr_id) INNER JOIN sports ON (sports.id = us.sports_id)";



    public function getStudents()
    {
        return Db::queryAll($this->select, array());
    }

    public function getBatches()
    {
        $select = 'SELECT count(usr.usr_id) as count , batch , s.name as name FROM usr INNER JOIN usr_sports as us ON (us.usr_id = usr.usr_id) INNER JOIN sports AS s ON (s.id = us.sports_id) GROUP BY s.name, batch';
        return Db::queryAll($select , array());
    }

}


?>