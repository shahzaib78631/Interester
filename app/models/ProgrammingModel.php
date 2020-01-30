<?php 

class ProgrammingModel {

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
    private $select = 'SELECT * FROM languages WHERE u_id = ? AND p_name = ?';

    private $update = 'UPDATE languages SET proficiency = ? WHERE u_id = ? AND p_name = ?';

    /**
     * Function for registering user
     * in database
     *
     * @return void
     */
    public function addProgramming($user_id, $language, $proficiency){
        // check if user exist
        try {
            $exist = Db::queryOne($this->select, array($user_id, $language));

            if($exist > 0) :
                Db::queryOne($this->update, array($proficiency, $user_id, $language));
            else:
                Db::query($this->insert, array($user_id, $language, $proficiency));
            endif;
            

        } catch (PDOException $e) {
            
        }
    }

    public function getLanguages(){
        $sql = 'SELECT name,logo, (SELECT proficiency FROM languages WHERE p_name = name AND u_id = ?) as proficiency FROM langs ';
        $query = Db::queryAll($sql, array($_SESSION['id']));
        return $query;
    }

    public function getLanguagesCards(){
        $sql = 'SELECT name,logo, (SELECT COUNT(p_name) FROM languages WHERE p_name = name) as `total_students` FROM langs ';
        $query = Db::queryAll($sql, array());
        return $query;
    }
}


?>