<?php

namespace frontend\models;

use Yii;
/**
 * This is the model class for table "web_message".
 *
 * @property integer $message_id
 * @property string $connet_name
 * @property string $connet_phone
 * @property string $email
 * @property string $address
 * @property string $message_content
 * @property string $create_date
 * @property integer $is_look
 */
class WebMessageModel extends \yii\db\ActiveRecord
{
    public $connet_name;
    public $connet_phone;
    public $message_content;
    public $verifyCode;
    public $email;
    public $address;
    public $is_look;
    public $feedback_img_url;
    public $create_date;
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'web_message';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['connet_name', 'connet_phone', 'email', 'address', 'message_content'], 'required'],
            [['connet_name', 'email'], 'string', 'max' => 32],
            [['connet_phone'], 'string', 'max' => 11],
            [['address', 'message_content','feedback_img_url'], 'string', 'max' => 255],
             ['verifyCode','captcha']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'message_id' => '',
            'connet_name' => '',
            'connet_phone' =>'',
            'email' => '',
            'address' => '',
            'message_content' => '',
            'create_date' => '',
            'is_look' => '',
            'verifyCode' => '',
            'feedback_img_url' => ''
        ];
    }
    
}
