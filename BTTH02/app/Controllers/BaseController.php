
<?php 
class BaseController{
    const VIEW_FOLDER = 'Views'; // controller se xu ly de hien thi len View
    protected function view($viewPath){
        $viewPath = BaseController::VIEW_FOLDER . '/' . str_replace('.', '/', $viewPath).'.php'; //sua duong dan (co the su dung self::)
        
        return require $viewPath;
    }

}
?>