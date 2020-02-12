<?php 

class TeachersModel {
    /**
     * Query for selecting all the teachers
     */
    private $select = "SELECT id , name , (SELECT choosen_answer FROM student_teacher_opinion WHERE choosen_answer = id AND question_number = 0 AND usr_id = ?) as ans FROM teachers";

    private $question = "SELECT ta.q_id as q_id, ta.o_id as o_id, ta.options as options, (SELECT sto.choosen_answer FROM student_teacher_opinion as sto WHERE sto.question_number = ? AND sto.choosen_answer = ta.o_id AND usr_id = ?) as selected FROM teachers_answers as ta WHERE ta.q_id = ?";
    
    // question no
    // 0 = favorite teachers
    // 1 = What is so special about your favourite teacher
    // 2 = I think teachers needs to bring improvement in

    private $insert = "INSERT INTO student_teacher_opinion (usr_id, question_number, choosen_answer) VALUES(?,?,?) 
    ON DUPLICATE KEY UPDATE usr_id = VALUES(usr_id) , question_number = VALUES(question_number) , choosen_answer = VALUES(choosen_answer)";

    public function getTeachers()
    {
        return Db::queryAll($this->select , array($_SESSION['id']));
    }

    public function save($usr_id , $question, $answer)
    {
        return Db::query($this->insert , array($usr_id , $question, $answer));
    }

    public function question($question)
    {
        return Db::queryAll($this->question, array($question, $_SESSION['id'], $question));
    }

    public function getFavTeachers(){
        $query = "SELECT COUNT(choosen_answer) as likes, name FROM student_teacher_opinion INNER JOIN teachers ON (choosen_answer = id) WHERE question_number = 0 GROUP BY choosen_answer ORDER BY likes DESC LIMIT 3";
        return Db::queryAll($query , array());
    }
}


?>