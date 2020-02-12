<?php

class SportsModel
{
    private $select = "SELECT id, name , (SELECT sports_id FROM usr_sports WHERE usr_id = ? AND id = sports_id) as selected FROM sports LEFT JOIN usr_sports As `us` ON (sports.id = us.sports_id)";
    

    private $insert = "INSERT INTO usr_sports VALUES (? , ?) 
    ON DUPLICATE KEY UPDATE sports_id = VALUES(sports_id) ";

    public function getSports()
    {
        return Db::queryAll($this->select , array($_SESSION['id']));
    }

    public function saveSport($user_id, $sports_id){
        $result = Db::query($this->insert, array($user_id, $sports_id));

        if($result > 0 )
            return Dialogs::success("Saved");
        else 
            return Dialogs::error("Some Error occured during saving your answer");
            
    }

}


?>