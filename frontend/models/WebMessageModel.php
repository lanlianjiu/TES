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
    public $connetName;
    public $connetPhone;
    public $messageContent;
    public $verifyCode;
    public $email;
    public $address;
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
            [['connetName', 'connetPhone', 'email', 'address', 'message_content', 'create_date','verifyCode'], 'required'],
            [['connetName', 'email'], 'string', 'max' => 32],
            [['connetPhone'], 'string', 'max' => 11],
            [['address', 'messageContent'], 'string', 'max' => 255],
             ['verifyCode','captcha']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'message_id' => 'Message ID',
            'connetName' => '联系人',
            'connetPhone' => '联系电话',
            'email' => '电子邮件',
            'address' => '地址',
            'messageContent' => '内容',
            'create_date' => 'Create Date',
            'is_look' => 'Is Look',
             'verifyCode' => '验证码',
        ];
    }

    public function savefeedback(){

        $data->connet_name = $this->$connetName;
        $data->connet_phone = $this->$connetPhone;
        $data->message_content = $this->$messageContent;
        $data->email = $this->$email;
        $data->address = $this->$address;
        $data->create_data = time();
        return $data->save();
    }
}
