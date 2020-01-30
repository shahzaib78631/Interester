<?php 

class LoginModel {

    /**
     * Query for inserting the user in database
     *
     * @var string
     */
    private $select = 'SELECT * FROM usr WHERE email = ? AND pass = ?';
    /**
     * Function for registering user
     * in database
     *
     * @return void
     */
    public function loginUser($email , $password){
        // check if user exist
        try {
            $user = Db::queryOne($this->select, array($email, $password));
            
            if($user > 0):
                $_SESSION['username'] = $user['first_name'] . " " . $user['last_name'];
                $_SESSION['id'] = $user['usr_id'];
                return true;
            else:
                return false;
            endif;

        } catch (PDOException $e) {
            
        }
    }
}


?>