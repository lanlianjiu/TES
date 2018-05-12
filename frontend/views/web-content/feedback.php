<?php  
    use yii\bootstrap\ActiveForm;
    use yii\captcha\Captcha;
    use yii\helpers\Url;
    use yii\helpers\Html;
?>

     <div class="login-box-body">
    <!-- <p class="login-box-msg">Sign in to start your session</p> -->
    <?php $form = ActiveForm::begin(['id' => 'feedback-form', 'action'=>Url::toRoute('site/login')]); ?>
    <table class="table feedback-table">
        <tr>
            <td>
                <div class="form-group feedback">
                    <?= $form->field($model, 'connetName')->textinput(['name'=>'connetName']) ?>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div class="form-group feedback">
                     <?= $form->field($model, 'connetPhone')->textinput(['name'=>'connetPhone']) ?>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div class="form-group feedback">
                     <?= $form->field($model, 'email')->textinput(['name'=>'email']) ?>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div class="form-group feedback">
                     <?= $form->field($model, 'address')->textinput(['name'=>'address']) ?>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div class="form-group has-feedback">
                     <?= $form->field($model, 'messageContent')->textarea(['name'=>'messageContent']) ?>
                </div>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                 <?= $form->field($model, 'verifyCode')->widget(Captcha::className())?>
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