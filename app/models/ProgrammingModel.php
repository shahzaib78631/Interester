<?php 

class ProgrammingModel {

    /**
     * Query for inserting the user in database
     *
     * @var string
     */
    private $insert = '
                    INSERT INTO languages
                    (`p_id`, `p_name`, `proficiency`)
                    VALUES( ? , ?, ?)';
    /**
     * Function for registering user
     * in database
     *
     * @return void
     */
    public function addProgramming($user_id, $language, $proficiency){
        // check if user exist
        try {
            $user = Db::query($this->insert, array($user_id, $language, $proficiency));
            
            if($user > 0):
                return Dialogs::success("Successfully Saved");
            else:
                return Dialogs::success("Some problem occured during registeration");
            endif;

        } catch (PDOException $e) {
            
        }
    }
}


?>