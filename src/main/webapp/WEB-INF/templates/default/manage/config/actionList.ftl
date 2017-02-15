<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>会员动态类型 - ${SITE_NAME} - Powered By JEESNS</title>
    <meta name="keywords" content="${SITE_KEYS}"/>
    <meta name="description" content="${SITE_DESCRIPTION}"/>
    <meta name="author" content="JEESNS"/>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link href="${base}/res/common/css/bootstrap.min.css" rel="stylesheet">
    <link href="${base}/res/common/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${base}/res/common/css/jeesns.css">
    <link rel="stylesheet" href="${base}/res/common/css/jeesns-skin.css">
    <!--[if lt IE 9]>
    <script src="${base}/res/common/js/html5shiv.min.js"></script>
    <script src="${base}/res/common/js/respond.min.js"></script>
    <![endif]-->
    <script src="${base}/res/common/js/jquery-2.1.1.min.js"></script>
    <script src="${base}/res/common/js/bootstrap.min.js"></script>
    <script src="${base}/res/plugins/metisMenu/metisMenu.js"></script>
    <script src="${base}/res/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="${base}/res/plugins/layer/layer.js"></script>
    <script src="${base}/res/common/js/jeesns.js"></script>
    <script src="${base}/res/common/js/manage.js"></script>
</head>
<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>会员动态类型(${list?size})</h5>
                </div>
                <div class="ibox-content">
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th style="width: 10px">#</th>
                                <th>名称</th>
                                <th>描述</th>
                                <th>添加时间</th>
                                <th>更新时间</th>
                                <th>状态</th>
                                <th width="150px">操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <#list list as action>
                            <tr>
                                <td>${action.id}</td>
                                <td>${action.name}</td>
                                <td>${action.log}</td>
                                <td>${action.createTime?string("yyyy-MM-dd HH:mm:ss")}</td>
                                <td>${action.updateTime?string("yyyy-MM-dd HH:mm:ss")}</td>
                                <td>
                                    <#if action.status=1>
                                        <a class="marg-l-5" target="_jeesnsLink" href="${managePath}/config/action/isenable/${action.id}">
                                            禁用
                                        </a>
                                    <#else>
                                        <a class="marg-l-5" target="_jeesnsLink" href="${managePath}/config/action/isenable/${action.id}">
                                            启用
                                        </a>
                                    </#if>
                                </td>
                                <td>
                                    <a href="${managePath}/config/action/edit/${action.id}" target="_jeesnsOpen" title="编辑动态类型">
                                        <i class="fa fa-edit green"></i>
                                    </a>
                                </td>
                            </tr>
                            </#list>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>