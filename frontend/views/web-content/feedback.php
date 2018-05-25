<?php  
    use yii\bootstrap\ActiveForm;
    use yii\captcha\Captcha;
    use yii\helpers\Url;
    use yii\helpers\Html;
?>

    <div class="login-box-body">
    <?php $form = ActiveForm::begin(['id' => 'feedback-form', 'action'=>'index.php?r=web-content/createfeedback']); ?>
    <table class="table feedback-table">
        <tr>
            <td>
                <div class="form-inline feedback">
                    <?= $form->field($model, 'connet_name')->textinput(['name'=>'connet_name']) ?>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div class="form-inline feedback">
                     <?= $form->field($model, 'connet_phone')->textinput(['name'=>'connet_phone']) ?>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div class="form-inline feedback">
                     <?= $form->field($model, 'email')->textinput(['name'=>'email']) ?>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div class="form-inline feedback">
                     <?= $form->field($model, 'address')->textinput(['name'=>'address']) ?>
                </div>
            </td>
        </tr>
         
        <tr>
            <td>
                <div class="form-inline has-feedback">
                     <?= $form->field($model, 'message_content')->textarea(['name'=>'message_content']) ?>
                </div>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <div class="form-inline has-feedback">
                 <?= $form->field($model, 'verifyCode')->widget(Captcha::className(),['options'=>['name'=>'verifyCode','class'=>'form-control']])?>
                </div>
            </td>
        </tr>
    </table>
    <div class="row">
        <div class="col-xs-4"></div>
        <div class="col-xs-4">
           <?= Html::submitButton('提交', ['class' => 'btn btn-primary btn-block btn-flat', 'name' => 'feedback-button']) ?>
        </div>
        <div class="col-xs-4"></div>
      </div>
    <?php ActiveForm::end(); ?>

  </div>