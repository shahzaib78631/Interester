<?php 

class Routes
{
    public static function isAccessible($page, $role){
        switch($page){
            case 'Home':
                return true;
            break;
            case 'Error':
                return true;
            break;
            case 'Users':
                return false;
            break;
        }
    }
}

?>