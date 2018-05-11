<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use frontend\assets\AppAsset;
use common\widgets\Alert;
use frontend\models\WebNavModel;
use frontend\widgets\banner\BannerWidget;
AppAsset::register($this);
//查询导航
$navmodel = new WebNavModel();
$mainNav = $navmodel->getMainnav();
$severNav = $navmodel->getServernav();

?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
</head>
<body>
<?php $this->beginBody() ?>

<div class="wrap">
    <div class="container">
        <div class="site-index">
            <div class="body-content">
                <div class="row no-margin panel-body" style="background-color: #fbffed;">
                    <div class="col-lg-9">
                       <marquee scrollamount="3">杭州拓新保洁服务热线：0571-87801391</marquee>
                    </div>
                    <div class="col-lg-3 inline">
                       <p><a href="Default.aspx">公司首页</a>?<a onclick="javascript:window.external.AddFavorite(window.location,document.title)" href="#">加入收藏</a>?<a href="#" onclick="this.style.behavior=&quot;url(#default#homepage)&quot;;this.setHomePage(location.href);">设为首页</a>?<a href="Single.aspx?id=21">联系我们</a></p>
                    </div>
                </div>
                <div class="row no-margin">
                    <div class="col-lg-12 no-padding" style="height:150px;">
                        <embed src="img/flash.swf" width="100%" height="150" type="application/x-shockwave-flash" wmode="transparent" quality="high" align="absmiddle">
                    </div>
                </div>
                <div class="row no-margin">
                    <div class="col-lg-12 no-padding">
                        <ul class="nav nav-tabs">
                            <?php
                            foreach ($mainNav as $key => $value) {
                                echo  '<li><a href="#">'.$value['web_nav_name'].'</a></li>';
                            }
                            ?>
                        </ul>
                    </div>
                </div>
                <div class="row no-margin">
                    <div class="col-lg-3" style="height:700px;border:1px solid #ddd;margin-top:5px;margin-bottom:5px;">
                        <div><?=BannerWidget::widget()?></div>
                        <div> 
                            <?php
                                foreach ($severNav as $key => $value) {
                                    echo  '<li><a href="#">'.$value['web_nav_name'].'</a></li>';
                                }
                            ?>
                        </div>
                    </div>
                    <div class="col-lg-9">
                        内容右边 <?= $content ?>
                    </div>
                </div>
            </div>
        </div>
        <footer class="footer">
            <div class="row no-margin">
            版权所有：杭州拓新保洁服务有限公司     技术支持：浙江首传科技有限公司

公司地址：杭州市萍水路389号        联系电话：0571-87801391        Email:1366246572@qq.com
            </div>
        </footer>
    </div>
</div>



<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
