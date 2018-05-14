<?php

namespace backend\controllers;

use Yii;
use yii\data\Pagination;
use backend\models\WebNavModel;

class WebNavController extends BaseController
{
    public $layout = "lte_main";
    
    public function actionIndex()
    {
        return $this->render('index');
    }

}
