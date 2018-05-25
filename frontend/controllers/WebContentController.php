<?php

namespace frontend\controllers;
use Yii;
use frontend\models\WebMessageModel;
use frontend\models\WebContentModel;
use yii\filters\AccessControl;
use yii\filters\VerbFilter;
use frontend\models\SignupForm;
 use yii\helpers\Url;
class WebContentController extends \yii\web\Controller
{
    
     public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['logout', 'signup','index', 'create','upload','ueditor'],
                'rules' => [
                    [
                        'actions' => ['signup','index'],
                        'allow' => true
                    ],
                    [
                        'actions' => ['logout','create','upload','ueditor'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    '*' => ['get','post'],
                ],
            ],
        ];
    }


    public function actions(){
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
            'upload'=>[
                    'class'=>'common\widgets\file_upload\UploadAction',
                    'config'=>[
                        'imagePathFormat' => Url::base()."/uploadimg/{yyyy}{mm}{dd}/{time}{rand:6}",
                            ]
                    ],
            // 'ueditor'=>[
            //         'class'=>'common\widgets\file_upload\UeditorAction',
            //         'config'=>[
            //             'imagePathFormat' => "/uploadimg/{yyyy}{mm}{dd}/{time}{rand:6}",
            //                 ]
            //         ]
        ];
    }

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

    public function actionCreatefeedback()
    {
         $model = new WebMessageModel();

        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            $model->is_look = 0;
            $model->create_date = time();
            $model->save();
           return $this->render('feedback', ['model' => $model]);
        } else {
           
          return $this->render('feedback', ['model' => $model]);
        }
    }

     /**
     * Logs in a user.
     *
     * @return mixed
     */
    public function actionLogin()
    {
        if (!Yii::$app->user->isGuest) {
            return $this->goHome();
        }
        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {
            return $this->goBack();
        } else {
            $model->password = '';
            return $this->render('login', [
                'model' => $model,
            ]);
        }
    }
    /**
     * Logs out the current user.
     *
     * @return mixed
     */
    public function actionLogout()
    {
        Yii::$app->user->logout();
        return $this->goHome();
    }
    /**
     * Signs user up.
     *
     * @return mixed
     */
    public function actionSignup()
    {
        $model = new SignupForm();
        if ($model->load(Yii::$app->request->post())) {
            if ($user = $model->signup()) {
                if (Yii::$app->getUser()->login($user)) {
                    return $this->goHome();
                }
            }
        }
        return $this->render('signup', [
            'model' => $model,
        ]);
    }
    /**
     * Requests password reset.
     *
     * @return mixed
     */
    public function actionRequestPasswordReset()
    {
        $model = new PasswordResetRequestForm();
        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            if ($model->sendEmail()) {
                Yii::$app->session->setFlash('success', 'Check your email for further instructions.');
                return $this->goHome();
            } else {
                Yii::$app->session->setFlash('error', 'Sorry, we are unable to reset password for the provided email address.');
            }
        }
        return $this->render('requestPasswordResetToken', [
            'model' => $model,
        ]);
    }
    /**
     * Resets password.
     *
     * @param string $token
     * @return mixed
     * @throws BadRequestHttpException
     */
    public function actionResetPassword($token)
    {
        try {
            $model = new ResetPasswordForm($token);
        } catch (InvalidParamException $e) {
            throw new BadRequestHttpException($e->getMessage());
        }
        if ($model->load(Yii::$app->request->post()) && $model->validate() && $model->resetPassword()) {
            Yii::$app->session->setFlash('success', 'New password saved.');
            return $this->goHome();
        }
        return $this->render('resetPassword', [
            'model' => $model,
        ]);
    }


}
