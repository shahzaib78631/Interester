<?php 

class RegisterModel {

    /**
     * Query for inserting the user in database
     *
     * @var string
     */
    private $insert = '
                    INSERT INTO usr
                    (`first_name`, `last_name`, `rollnumber`, `email`, `pass`, `batch`, `created_at`)
                    VALUES( ? , ?, ? , ?, ? , ? , NOW())';
    /**
     * Function for registering user
     * in database
     *
     * @return void
     */
    public function registerUser($first_name, $last_name, $roll_no, $email , $password, $batch){
        $query = "select first_name from usr where email = ?";
        $user = Db::query($query, array($email));
        if ($user > 0):
            return Dialogs::error("User already exists!");
        endif;
        // check if user exist
        try {
            $user = Db::query($this->insert, array($first_name, $last_name, $roll_no, $email, $password, $batch));
            
            if($user > 0):
                return Dialogs::success("Successfully Registered");
            else:
                return Dialogs::error("Some problem occured during registeration");
            endif;

        } catch (PDOException $e) {
            
        }
    }
}


?>