<?php 

class LanguagesController extends Controller
{
    public function process($params)
    {
        $this->head['title'] = 'Languages';
        
        $programmingManager = new ProgrammingModel;

        $this->data['langs'] = $programmingManager->getLanguagesCards();

        $this->data['lang_info'] = $programmingManager->getLanguagesInfo();

        $this->view = 'languages';
    }
}

?>