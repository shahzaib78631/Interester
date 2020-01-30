<?php 

class DashboardModel {

    /**
     * Query for inserting the user in database
     *
     * @var string
     */
    private $insert = '
                    INSERT INTO languages
                    (`u_id`, `p_name`, `proficiency`)
                    VALUES( ? , ?, ?)';
    /**
     * Query for selecting language from database
     *
     * @var string
     */
    private $select = 'SELECT * FROM usr as u INNER JOIN social_id as s ON (u.usr_id = s.usr_id) WHERE u.usr_id = ? ';

    /**
     * Query for updating
     *
     * @var string
     */
    private $update = 'UPDATE languages SET proficiency = ? WHERE u_id = ? AND p_name = ?';


    public function getUserData($user_id){
        return Db::queryOne($this->select, array($user_id));
    }

    public function saveUserProfile($user_id, $first_name, $last_name, $facebook, $linkedin, $github){
        
        //Saving the users first and last name
        $this->saveUsername($user_id, $first_name, $last_name);

        $query = 'SELECT usr_id FROM social_id WHERE usr_id = ?';
        $result = Db::query($query , array($user_id));

        print_r($result);

        if($result > 0){
            $query = 'UPDATE social_id SET `fb` = ? , `linked_in` = ? , `github` = ? WHERE `usr_id` = ?';
            $result = Db::query($query , array($facebook, $linkedin, $github, $user_id));
            if($result > 0){
                return Dialogs::success('Profile Successfully Updated');
            }
        }
        else
        {
            $query = 'INSERT INTO social_id(`usr_id`, `fb`, `linked_in`, `github`) VALUES(?,?,?,?)';
            $result = Db::query($query , array($user_id, $facebook, $linkedin, $github));
            if($result > 0)
                return Dialogs::success('Profile Successfully Updated');
        }

    }

    public function saveUsername($user_id, $first_name, $last_name)
    {
        $query = "UPDATE usr SET first_name = ? , last_name = ? WHERE usr_id = ?";
        Db::query($query , array($first_name, $last_name, $user_id));
        unset($_SESSION['username']);
        $_SESSION['username'] = $first_name . ' ' . $last_name;
    }
}


?>