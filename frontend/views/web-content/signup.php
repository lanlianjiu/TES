<?php

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model \frontend\models\SignupForm */

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use yii\captcha\Captcha;

$this->title = '注册';
?>
<div class="site-signup websign-img panel container">
    <p>请填写以下字段注册：</p>
    <div class="row">
        <div class="col-lg-12">
            <?php $form = ActiveForm::begin(['id' => 'form-signup']); ?>
                <div class="form-inline has-feedback">
                     <?= $form->field($model,'head_img')->widget('common\widgets\file_upload\FileUpload',['config'=>[]])?>
                </div>
                <div class="form-inline has-feedback">
                    <?= $form->field($model, 'username')->textInput(['autofocus' => true]) ?>
                </div>
                <div class="form-inline has-feedback">
                    <?= $form->field($model, 'email') ?>
                </div>
                <div class="form-inline has-feedback">
                    <?= $form->field($model, 'password')->passwordInput() ?>
                </div>
                <div class="form-inline has-feedback">
                    <?= $form->field($model, 'rePassword')->passwordInput() ?>
                </div>
                <div class="form-inline captcha">
                    <?= $form->field($model, 'verifyCode')->widget(Captcha::className())?>
                </div>
                <div class="form-group">
                    <?= Html::submitButton('提交', ['class' => 'btn btn-primary btn-block', 'name' => 'signup-button']) ?>
                </div>

            <?php ActiveForm::end(); ?>
        </div>
    </div>
</div>
