<?php 

class StudentsModel {
    /**
     * Query for selectig all the students related to particular language 
     *
     * @var string
     */
    private $select = 'SELECT `u_id` AS `id`, `first_name`, `last_name`, `proficiency`, `image` FROM usr LEFT JOIN ';
    
    private $levels = 'SELECT (SELECT count(`proficiency`) FROM languages WHERE proficiency = 1 AND `name` = ?) as `big` ,
                            (SELECT count(`proficiency`) FROM languages WHERE proficiency = 2 AND `name` = ?) as `jour`,
                            (SELECT count(`proficiency`) FROM languages WHERE proficiency = 3 AND `name` = ?) as `exp`
                        FROM languages GROUP BY big,jour,exp';
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
        $this->select .= $table . ' ON (u_id = usr_id) WHERE `name` = ?';

        return Db::queryAll($this->select , array($value));
    }

    public function getLevels($table , $value)
    {
        return Db::queryOne($this->levels , array($value , $value, $value));
    }

    public function getBatches($table , $value)
    {
        $select = 'SELECT `batch`, count(`batch`) as `no`  from usr INNER JOIN ';
        $select .= $table . ' ON (usr_id = u_id) WHERE name = ?  GROUP BY batch';
        $result = Db::queryAll($select , array($value));

        $batches = [];
        $batches['F16SW'] = 0;
        $batches['17SW'] = 0;
        $batches['18SW'] = 0;
        $batches['19SW'] = 0;

        foreach ($result as $batch) {
            switch ($batch['batch']) {
                case 'F16SW':
                    $batches['F16SW'] = $batch['no'];
                break;
                case '17SW':
                    $batches['17SW'] = $batch['no'];
                break;
                case '18SW':
                    $batches['18SW'] = $batch['no'];
                break;
                case '19SW':
                    $batches['19SW'] = $batch['no'];
                break;
            }
        }
        return $batches;
    }
}


?>