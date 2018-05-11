<?php

namespace frontend\controllers;

class WebContentController extends \yii\web\Controller
{
    public function actionIndex()
    {
        return $this->render('index');
    }

}
