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
            case 'Login':
                return true;
            break;
            case 'Logout':
                return true;
            break;
            case 'Register':
                return true;
            break;
            case 'Dashboard':
                return true;
            break;
            case 'Teachers':
                return true;
            break;
            case 'Students':
                return true;
            break;
            case 'Profile':
                return true;
            break;
            case 'Programming':
                return true;
            break;
            case 'Users':
                return false;
            break;
        }
    }
}

?>