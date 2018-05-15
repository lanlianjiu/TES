<?php

namespace backend\controllers;

use Yii;
use yii\data\Pagination;
use backend\models\WebMessageModel;
use yii\web\NotFoundHttpException;

class WebMessageController extends BaseController
{
    public $layout = "lte_main";
    public function actionIndex()
    {
         $query = WebMessageModel::find();
         $querys = Yii::$app->request->get('query');
        if(count($querys) > 0){
            $condition = "";
            $parame = array();
            foreach($querys as $key=>$value){
                $value = trim($value);
                if(empty($value) == false){
                    $parame[":{$key}"]=$value;
                    if(empty($condition) == true){
                        $condition = " {$key}=:{$key} ";
                    }else{
                        $condition = $condition . " AND {$key}=:{$key} ";
                    }
                }
            }
            if(count($parame) > 0){
                $query = $query->where($condition, $parame);
            }
        }

        $pagination = new Pagination([
            'totalCount' =>$query->count(), 
            'pageSize' => '10', 
            'pageParam'=>'page', 
            'pageSizeParam'=>'per-page']
        );
        
        $orderby = Yii::$app->request->get('orderby', '');
        if(empty($orderby) == false){
            $query = $query->orderBy($orderby);
        }
        
        
        $models = $query
        ->offset($pagination->offset)
        ->limit($pagination->limit)
        ->all();
        return $this->render('index', [
            'models'=>$models,
            'pages'=>$pagination,
            'query'=>$querys,
        ]);
    }

    /**
     * Displays a single WebMessage model.
     * @param string $message_id
     * @return mixed
     */
    public function actionView($message_id)
    {
        //$id = Yii::$app->request->post('id');
        $model = $this->findModel($message_id);
        echo json_encode($model->getAttributes());

    }

        /**
     * Deletes an existing WebMessageModel model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param string $id
     * @return mixed
     */
    public function actionDelete(array $ids)
    {
        if(count($ids) > 0){
            $c = WebMessageModel::deleteAll(['in', 'message_id', $ids]);
            echo json_encode(array('errno'=>0, 'data'=>$c, 'msg'=>json_encode($ids)));
        }
        else{
            echo json_encode(array('errno'=>2, 'msg'=>''));
        }
    
    }

    /**
     * Finds the AdminLog model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param string $message_id
     * @return WebMessage the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($message_id)
    {
        if (($model = WebMessageModel::findOne($message_id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }


}
