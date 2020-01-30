<?php 

class StudentsModel {

    private $select = 'SELECT `u_id` AS `id`, `first_name`, `last_name`, `proficiency`, `image` FROM usr LEFT JOIN languages ON (u_id = usr_id) WHERE `name` = ?';
    /**
     * Function for retreving all the students related
     * to particular section and value
     *
     * @param string $section
     * @param string $value
     * @return void
     */
    public function getStudents($table , $value)
    {
        return Db::queryAll($this->select , array($value));
    }
}


?>