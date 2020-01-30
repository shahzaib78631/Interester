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
        $sql = 'SELECT * FROM langs LEFT JOIN languages ON (`name` = `p_name`)';
        $query = Db::queryAll($sql, array());
        return $query;
    }
}


?>