<?php 

class AllSportsController extends Controller
{
    public function process($params)
    {
        $this->head['title'] = 'Allsports';

        $allSportsModel = new AllSportsModel;

        $this->data['students'] = $allSportsModel->getStudents();

        $this->data['batches'] = $allSportsModel->getBatches();

        $this->view = 'allsports';
    }
}

?>