<?php

namespace frontend\controllers;
use Yii;
use frontend\models\WebMessageModel;
class WebContentController extends \yii\web\Controller
{
    //公司首页
    public function actionIndex()
    {
        return $this->render('index');
    }

    //公司简介
    public function actionProfile()
    {
        return $this->render('profile');
    }

    //公司资质
    public function actionQualification()
    {
        return $this->render('qualification');
    }

    //工程案列
    public function actionProject()
    {
        return $this->render('project');
    }

    //联系我们
    public function actionContact()
    {
        return $this->render('contact');
    }

    //客户留言
    public function actionFeedback()
    {
        $model = new WebMessageModel();
        return $this->render('feedback', [
            'model' => $model,
        ]);
    }

}
