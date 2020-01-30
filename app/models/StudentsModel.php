<?php 

class StudentsModel {

    private $select = 'SELECT `first_name`, `last_name`, `proficiency`, `image` FROM usr LEFT JOIN ? ON (u_id = usr_id) WHERE `name` = ?';
    /**
     * Function for retreving all the students related
     * to particular section and value
     *
     * @param string $section
     * @param string $value
     * @return void
     */
    public function getStudents($section , $value)
    {
        return Db::queryAll($this->select , array($section , $value));
    }
}


?>