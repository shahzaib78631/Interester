<?php 

define ('SITE_ROOT', realpath(dirname(__FILE__)));

class DashboardModel {

    /**
     * Query for inserting the user in database
     *
     * @var string
     */
    private $insert = '
                    INSERT INTO languages
                    (`u_id`, `name`, `proficiency`)
                    VALUES( ? , ?, ?)';
    /**
     * Query for selecting language from database
     *
     * @var string
     */
    private $select = 'SELECT * FROM usr as u LEFT JOIN social_id as s ON (u.usr_id = s.usr_id) WHERE u.usr_id = ? ';

    /**
     * Query for updating
     *
     * @var string
     */
    private $update = 'UPDATE languages SET proficiency = ? WHERE u_id = ? AND name = ?';


    public function getUserData($user_id){
        return Db::queryOne($this->select, array($user_id));
    }

    public function saveUserProfile($user_id, $first_name, $last_name, $facebook, $linkedin, $github){
        
        //Saving the users first and last name
        $this->saveUsername($user_id, $first_name, $last_name);

        $query = 'SELECT usr_id FROM social_id WHERE usr_id = ?';
        $result = Db::query($query , array($user_id));

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

    public function saveImage($user_id)
    {
        if($_FILES["image"]["tmp_name"] != null)
            $check = getimagesize($_FILES["image"]["tmp_name"]);
        else 
            return Dialogs::error("please select an image file");

        if($check !== false){
            $image = $_FILES['image']['tmp_name'];
            $imgContent = addslashes(file_get_contents($image));

            $target_dir = SITE_ROOT."/images/";
            $random = bin2hex(random_bytes(7));
            $target_file = $target_dir . $random .basename($_FILES["image"]["name"]);
            $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));


            // Allow certain file formats
            if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg") {
                return Dialogs::error('Sorry, only JPG, JPEG, PNG & GIF files are allowed.');
            }
            if (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file)) {
                

                $img_name = $random .basename($_FILES["image"]["name"]);
                
                $save = 'UPDATE usr SET `image` = ?  WHERE `usr_id` = ?';



                Db::query($save , array($img_name , $_SESSION['id']));

                return Dialogs::success("Profile picture has been updated!");
                
            } else {
                return Dialogs::error("Sorry, there was an error uploading your file.");
            }

        }
        else {
            return Dialogs::error('Some problem occured during saving your profile');
        }
    }
}


?>