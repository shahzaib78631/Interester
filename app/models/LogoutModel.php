<?php 

class LogoutModel {

    /**
     * Function for registering user
     * in database
     *
     * @return void
     */
    public function logoutUser(){
        $_SESSION[] = array();
        session_destroy();
    }
}


?>