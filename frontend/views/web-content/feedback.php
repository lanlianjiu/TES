<?php  
    use yii\bootstrap\ActiveForm;
    use yii\captcha\Captcha;
    use yii\helpers\Url;
    use yii\helpers\Html;
?>

    <div class="login-box-body">
    <?php $form = ActiveForm::begin(['id' => 'feedback-form','options'=>[
                    'name'=>'feedback_form'
                ], 'action'=>'index.php?r=web-content/createfeedback']); ?>
    <table class="table">
        <tr>
            <td algin="right" width="100">联系人</td>
            <td>
                <div class="form-inline feedback">
                    <?= $form->field($model, 'connet_name')->textinput() ?>
                </div>
            </td>
        </tr>
         <tr>
            <td algin="right" width="100">联系电话</td>
            <td>
                <div class="form-inline feedback">
                     <?= $form->field($model, 'connet_phone')->textinput() ?>
                </div>
            </td>
        </tr>
        <tr>
            <td algin="right">邮箱</td>
            <td>
                <div class="form-inline feedback">
                     <?= $form->field($model, 'email')->textinput() ?>
                </div>
            </td>
        </tr>
         <tr>
            <td algin="right">地址</td>
             <td>
                 <div class="form-inline feedback">
                 <?= $form->field($model, 'address')->textinput() ?>
                  </div>
            </td>
        </tr>
        <tr>
            <td>内容</td>
            <td>
                <?= $form->field($model, 'message_content')->textarea() ?>
            </td>
        </tr>
        <tr>
            <td>验证码</td>
            <td class="form-inline">
                <?= $form->field($model, 'verifyCode')->widget(Captcha::className(),['options'=>['class'=>'form-control']])?>
            </td>
        </tr>
         <tr>
            <td colspan="2" class="form-inline">
               <?= Html::submitButton('提交', ['class' => 'btn btn-primary btn-block btn-flat', 'name' => 'feedback-button']) ?>
            </td>
        </tr>
    </table>
    <?php ActiveForm::end(); ?>

  </div>