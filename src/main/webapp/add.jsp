<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: dengry
  Date: 2016/9/22
  Time: 9:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta charset="utf-8"/>
    <title>Dashboard - Ace Admin</title>

    <meta name="description" content="overview &amp; stats"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="/res/ace/assets/css/bootstrap.css"/>
    <link rel="stylesheet" href="/res/ace/components/font-awesome/css/font-awesome.css"/>

    <!-- page specific plugin styles -->
    <link rel="stylesheet" href="/res/webuploader-0.1.5/webuploader.css"/>
    <link rel="stylesheet" type="text/css" href="/res/webuploader-0.1.5/image-upload/style.css"/>
    <link rel="stylesheet" href="/res/bootstrapValidator/dist/css/bootstrapValidator.css"/>
    <link rel="stylesheet" href="/res/layer/skin/layer.css"/>
    <!-- text fonts -->
    <link rel="stylesheet" href="/res/ace/assets/css/ace-fonts.css"/>

    <!-- ace styles -->
    <link rel="stylesheet" href="/res/ace/assets/css/ace.css" class="ace-main-stylesheet" id="main-ace-style"/>

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="/res/ace/assets/css/ace-part2.css" class="ace-main-stylesheet"/>
    <![endif]-->
    <link rel="stylesheet" href="/res/ace/assets/css/ace-skins.css"/>
    <link rel="stylesheet" href="/res/ace/assets/css/ace-rtl.css"/>

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="/res/ace/assets/css/ace-ie.css"/>
    <![endif]-->

    <!-- inline styles related to this page -->

    <!-- ace settings handler -->
    <script src="/res/ace/assets/js/ace-extra.js"></script>

    <!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

    <!--[if lte IE 8]>
    <script src="/res/ace/components/html5shiv/dist/html5shiv.min.js"></script>
    <script src="/res/ace/components/respond/dest/respond.min.js"></script>
    <![endif]-->
</head>

<body class="no-skin">
<!-- #section:basics/navbar.layout -->
<%@include file="../header.jsp" %>

<!-- /section:basics/navbar.layout -->
<div class="main-container ace-save-state" id="main-container">
    <script type="text/javascript">
        try {
            ace.settings.loadState('main-container')
        } catch (e) {
        }
    </script>

    <!-- #section:basics/sidebar -->
    <div id="sidebar" class="sidebar   responsive   ace-save-state">
        <script type="text/javascript">
            try {
                ace.settings.loadState('sidebar')
            } catch (e) {
            }
        </script>


        <ul class="nav nav-list">
            <li class="">
                <a href="#" class="dropdown-toggle">
                    <i class="menu-icon fa fa-desktop"></i>
                    <span class="menu-text">
								系统导航
							</span>
                </a>

                <b class="arrow"></b>
            </li>


            <li class="">
                <a href="#" class="dropdown-toggle">
                    <i class="menu-icon fa fa-list"></i>
                    <span class="menu-text"> 品牌 &amp; 商品 </span>

                    <b class="arrow fa fa-angle-down"></b>
                </a>

                <b class="arrow"></b>

                <ul class="submenu nav-show" style="display: block;">
                    <li class="">
                        <a href="/back/brand/toList">
                            <i class="menu-icon fa fa-caret-right"></i>
                            品牌管理
                        </a>

                        <b class="arrow"></b>
                    </li>

                    <li class="active">
                        <a href="javascript:void(0)" class="dropdown-toggle">
                            <i class="menu-icon fa fa-caret-right"></i>
                            商品管理
                        </a>

                        <b class="arrow"></b>
                    </li>
                </ul>
            </li>

            <li class="">
                <a href="#" class="dropdown-toggle">
                    <i class="menu-icon fa fa-list"></i>
                    <span class="menu-text"> 订单 </span>

                    <b class="arrow fa fa-angle-down"></b>
                </a>

                <b class="arrow"></b>

                <ul class="submenu">
                    <li class="">
                        <a href="tables.html">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Simple &amp; Dynamic
                        </a>

                        <b class="arrow"></b>
                    </li>

                    <li class="">
                        <a href="jqgrid.html">
                            <i class="menu-icon fa fa-caret-right"></i>
                            jqGrid plugin
                        </a>

                        <b class="arrow"></b>
                    </li>
                </ul>
            </li>

            <li class="">
                <a href="#" class="dropdown-toggle">
                    <i class="menu-icon fa fa-pencil-square-o"></i>
                    <span class="menu-text"> 支付 </span>

                    <b class="arrow fa fa-angle-down"></b>
                </a>

                <b class="arrow"></b>

                <ul class="submenu">
                    <li class="">
                        <a href="form-elements.html">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Form Elements
                        </a>

                        <b class="arrow"></b>
                    </li>

                    <li class="">
                        <a href="form-elements-2.html">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Form Elements 2
                        </a>

                        <b class="arrow"></b>
                    </li>

                    <li class="">
                        <a href="form-wizard.html">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Wizard &amp; Validation
                        </a>

                        <b class="arrow"></b>
                    </li>

                    <li class="">
                        <a href="wysiwyg.html">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Wysiwyg &amp; Markdown
                        </a>

                        <b class="arrow"></b>
                    </li>

                    <li class="">
                        <a href="dropzone.html">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Dropzone File Upload
                        </a>

                        <b class="arrow"></b>
                    </li>
                </ul>
            </li>

            <li class="">
                <a href="#" class="dropdown-toggle">
                    <i class="menu-icon fa fa-list-alt"></i>
                    <span class="menu-text">
								维护
							</span>

                    <b class="arrow fa fa-angle-down"></b>
                </a>

                <b class="arrow"></b>

                <ul class="submenu">
                    <li class="">
                        <a href="/back/druid/toList">
                            <i class="menu-icon fa fa-caret-right"></i>
                            数据库监控
                        </a>
                    </li>


                </ul>
            </li>

            <li class="">
                <a href="#" class="dropdown-toggle">
                    <i class="menu-icon fa fa-tag"></i>
                    <span class="menu-text">
								用户管理
							</span>

                    <b class="arrow fa fa-angle-down"></b>
                </a>

                <b class="arrow"></b>

                <ul class="submenu">
                    <li class="">
                        <a href="/back/emp/toPerson">
                            <i class="menu-icon fa fa-caret-right"></i>
                            个人
                        </a>
                    </li>

                    <li class="">
                        <a href="/back/product/toList">
                            <i class="menu-icon fa fa-caret-right"></i>
                            商品管理
                        </a>

                        <b class="arrow"></b>
                    </li>
                </ul>
            </li>

            <li class="">
                <a href="gallery.html">
                    <i class="menu-icon fa fa-picture-o"></i>
                    <span class="menu-text"> 系统配置 </span>
                </a>

                <b class="arrow"></b>
            </li>
        </ul><!-- /.nav-list -->

        <!-- #section:basics/sidebar.layout.minimize -->
        <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
            <i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state"
               data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
        </div>

        <!-- /section:basics/sidebar.layout.minimize -->
    </div>

    <!-- /section:basics/sidebar -->
    <div class="main-content">
        <div class="main-content-inner">
            <!-- #section:basics/content.breadcrumbs -->
            <div class="breadcrumbs ace-save-state" id="breadcrumbs">
                <ul class="breadcrumb">
                    <li>
                        <i class="ace-icon fa fa-home home-icon"></i>
                        <a href="#">Home</a>
                    </li>
                    <li class="active">Dashboard</li>
                </ul><!-- /.breadcrumb -->

            </div>

            <!-- /section:basics/content.breadcrumbs -->
            <div class="page-content">
                <form class="form-horizontal" role="form" id="myform"
                      action="/back/product/add" method="post" enctype="multipart/form-data">
                    <div>
                        <div class="widget-box">
                            <div class="widget-header">
                                <h4 class="widget-title">商品新增</h4>
                            </div>
                            <div class="widget-body">
                                <div class="widget-main">
                                    <div class="form-group">
                                        <label for="type" class="col-sm-1 control-label">商品类型</label>
                                        <div class="col-sm-11">
                                            <select class="form-control" name="type.id" id="type">
                                                <option value="">请选择</option>
                                                <c:forEach items="${types}" var="type">
                                                    <option value="${type.id}">${type.name}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="name" class="col-sm-1 control-label">商品名称</label>
                                        <div class="col-sm-11">
                                            <input type="text" class="form-control" name="name" id="name">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="brand" class="col-sm-1 control-label">商品品牌</label>
                                        <div class="col-sm-11">
                                            <select class="form-control" name="brand.id" id="brand">
                                                <option value="">请选择</option>
                                                <c:forEach items="${brands}" var="brand">
                                                    <option value="${brand.id}">${brand.name}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="price" class="col-sm-1 control-label">价格</label>
                                        <div class="col-sm-11">
                                            <input type="text" class="form-control" name="price" id="price">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="weight" class="col-sm-1 control-label">毛重(KG)</label>
                                        <div class="col-sm-11">
                                            <input type="text" class="form-control" name="weight" id="weight"
                                                   value="0.6">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-1 control-label">上传图片</label>
                                        <div class="col-sm-11">
                                            <div id="container">
                                                <!--头部，相册选择和格式选择-->
                                                <div id="uploader">
                                                    <div class="queueList">
                                                        <div id="dndArea" class="placeholder">
                                                            <div id="filePicker"></div>
                                                            <p>或将照片拖到这里</p>
                                                        </div>
                                                        <input type="hidden" name="imgUrl" value="" id="imgUrl">
                                                    </div>
                                                    <div class="statusBar" style="display:none;">
                                                        <div class="progress">
                                                            <span class="text">0%</span>
                                                            <span class="percentage"></span>
                                                        </div>
                                                        <div class="info"></div>
                                                        <div class="btns">
                                                            <div id="filePicker2"></div>
                                                            <div class="uploadBtn">开始上传</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-1 control-label">材质</label>
                                        <div class="col-sm-11">
                                            <c:forEach items="${features}" var="feature">
                                                <div class="checkbox" style="float: left">
                                                    <label>
                                                        <input name="feature" class="ace ace-checkbox-2" type="checkbox"
                                                               value="${feature.id}"/>
                                                        <span class="lbl"> ${feature.name}</span>
                                                    </label>
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-1 control-label">颜色</label>
                                        <div class="col-sm-11">
                                            <c:forEach items="${colors}" var="color">
                                                <div class="checkbox" style="float: left">
                                                    <label>
                                                        <input name="color" class="ace ace-checkbox-2" type="checkbox"
                                                               value="${color.id}"/>
                                                        <span class="lbl"> ${color.name}</span>
                                                    </label>
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-1 control-label">尺码</label>
                                        <div class="col-sm-11">
                                            <div class="checkbox" style="float: left">
                                                <label>
                                                    <input name="size" class="ace ace-checkbox-2" type="checkbox"
                                                           value="S"/>
                                                    <span class="lbl"> S</span>
                                                </label>
                                            </div>
                                            <div class="checkbox" style="float: left">
                                                <label>
                                                    <input name="size" class="ace ace-checkbox-2" type="checkbox"
                                                           value="M"/>
                                                    <span class="lbl"> M</span>
                                                </label>
                                            </div>
                                            <div class="checkbox" style="float: left">
                                                <label>
                                                    <input name="size" class="ace ace-checkbox-2" type="checkbox"
                                                           value="XL"/>
                                                    <span class="lbl"> XL</span>
                                                </label>
                                            </div>
                                            <div class="checkbox" style="float: left">
                                                <label>
                                                    <input name="size" class="ace ace-checkbox-2" type="checkbox"
                                                           value="XXL"/>
                                                    <span class="lbl"> XXL</span>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-1 control-label">状态</label>
                                        <div class="col-sm-11">
                                            <div class="checkbox" style="float: left">
                                                <label>
                                                    <input name="isNew" class="ace ace-checkbox-2" type="checkbox"
                                                           value="1"/>
                                                    <span class="lbl"> 新品</span>
                                                </label>
                                            </div>
                                            <div class="checkbox" style="float: left">
                                                <label>
                                                    <input name="isCommend" class="ace ace-checkbox-2" type="checkbox"
                                                           value="1"/>
                                                    <span class="lbl"> 推荐</span>
                                                </label>
                                            </div>
                                            <div class="checkbox" style="float: left">
                                                <label>
                                                    <input name="isHot" class="ace ace-checkbox-2" type="checkbox"
                                                           value="1"/>
                                                    <span class="lbl"> 热卖</span>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-1 control-label">描述</label>
                                        <div class="col-sm-11">
                                            <script id="desc" name="description" type="text/plain">
                                            </script>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-1 control-label">包装清单</label>
                                        <div class="col-sm-11">
                                            <textarea name="packageList" class="form-control"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-offset-1 col-sm-11">
                                            <div class="col-md-offset-4 col-md-8">
                                                <button class="btn btn-info btn-sm" type="submit" id="validateBtn">
                                                    <i class="ace-icon fa fa-check"></i>
                                                    提交
                                                </button>

                                                &nbsp; &nbsp; &nbsp;
                                                <button class="btn btn-sm" type="reset" id="resetBtn">
                                                    <i class="ace-icon fa fa-refresh"></i>
                                                    重置
                                                </button>
                                                &nbsp; &nbsp; &nbsp;
                                                <button class="btn btn-success btn-sm" id="back">
                                                    <i class="ace-icon fa fa-undo"></i>返回
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>


            </div><!-- /.page-content -->
        </div>
    </div><!-- /.main-content -->

    <div class="footer">
        <div class="footer-inner">
            <!-- #section:basics/footer -->
            <div class="footer-content">
						<span class="bigger-120">
							<span class="blue bolder">Ace</span>
							Application &copy; 2013-2014
						</span>

                &nbsp; &nbsp;
                <span class="action-buttons">
							<a href="#">
								<i class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
							</a>

							<a href="#">
								<i class="ace-icon fa fa-facebook-square text-primary bigger-150"></i>
							</a>

							<a href="#">
								<i class="ace-icon fa fa-rss-square orange bigger-150"></i>
							</a>
						</span>
            </div>

            <!-- /section:basics/footer -->
        </div>
    </div>

    <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
        <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
    </a>
</div><!-- /.main-container -->

<!-- basic scripts -->

<!--[if !IE]> -->
<script src="/res/ace/components/jquery/dist/jquery.js"></script>

<!-- <![endif]-->

<!--[if IE]>
<script src="/res/ace/components/jquery.1x/dist/jquery.js"></script>
<![endif]-->
<script type="text/javascript">
    if ('ontouchstart' in document.documentElement) document.write("<script src='/res/ace/components/_mod/jquery.mobile.custom/jquery.mobile.custom.js'>" + "<" + "/script>");
</script>
<script src="/res/ace/components/bootstrap/dist/js/bootstrap.js"></script>

<!-- page specific plugin scripts -->
<script src="/res/webuploader-0.1.5/webuploader.js"></script>
<script src="/res/webuploader-0.1.5/image-upload/upload.js"></script>
<script type="text/javascript" src="/ueditor/ueditor.config.js"></script>
<script type="text/javascript" src="/ueditor/ueditor.all.js"></script>
<script src="/res/bootstrapValidator/dist/js/bootstrapValidator.min.js"></script>
<script src="/res/bootstrapValidator/dist/js/language/zh_CN.js"></script>
<script src="/res/layer/layer.js"></script>
<script src="/res/scripts/common.js"></script>
<!--[if lte IE 8]>
<script src="/res/ace/components/ExplorerCanvas/excanvas.js"></script>
<![endif]-->
<script src="/res/ace/components/_mod/jquery-ui.custom/jquery-ui.custom.js"></script>
<script src="/res/ace/components/jqueryui-touch-punch/jquery.ui.touch-punch.js"></script>
<script src="/res/ace/components/_mod/easypiechart/jquery.easypiechart.js"></script>
<script src="/res/ace/components/jquery.sparkline/index.js"></script>
<script src="/res/ace/components/Flot/jquery.flot.js"></script>
<script src="/res/ace/components/Flot/jquery.flot.pie.js"></script>
<script src="/res/ace/components/Flot/jquery.flot.resize.js"></script>

<!-- ace scripts -->
<script src="/res/ace/assets/js/src/elements.scroller.js"></script>
<script src="/res/ace/assets/js/src/elements.colorpicker.js"></script>
<script src="/res/ace/assets/js/src/elements.fileinput.js"></script>
<script src="/res/ace/assets/js/src/elements.typeahead.js"></script>
<script src="/res/ace/assets/js/src/elements.wysiwyg.js"></script>
<script src="/res/ace/assets/js/src/elements.spinner.js"></script>
<script src="/res/ace/assets/js/src/elements.treeview.js"></script>
<script src="/res/ace/assets/js/src/elements.wizard.js"></script>
<script src="/res/ace/assets/js/src/elements.aside.js"></script>
<script src="/res/ace/assets/js/src/ace.js"></script>
<script src="/res/ace/assets/js/src/ace.basics.js"></script>
<script src="/res/ace/assets/js/src/ace.scrolltop.js"></script>
<script src="/res/ace/assets/js/src/ace.ajax-content.js"></script>
<script src="/res/ace/assets/js/src/ace.touch-drag.js"></script>
<script src="/res/ace/assets/js/src/ace.sidebar.js"></script>
<script src="/res/ace/assets/js/src/ace.sidebar-scroll-1.js"></script>
<script src="/res/ace/assets/js/src/ace.submenu-hover.js"></script>
<script src="/res/ace/assets/js/src/ace.widget-box.js"></script>
<script src="/res/ace/assets/js/src/ace.settings.js"></script>
<script src="/res/ace/assets/js/src/ace.settings-rtl.js"></script>
<script src="/res/ace/assets/js/src/ace.settings-skin.js"></script>
<script src="/res/ace/assets/js/src/ace.widget-on-reload.js"></script>
<script src="/res/ace/assets/js/src/ace.searchbox-autocomplete.js"></script>

<!-- inline scripts related to this page -->
<script type="text/javascript">

    $("#back").click(function () {
        window.location.href = "/back/product/toList";
    });




    $(function () {
        //ueditor
        var ue = UE.getEditor('desc');
        UE.Editor.prototype._bkGetActionUrl = UE.Editor.prototype.getActionUrl;
        UE.Editor.prototype.getActionUrl = function (action) {
            if (action == 'uploadimage' || action == 'uploadscrawl') {
                return '/upload2';
            } else if (action == 'listimage') {
                return '/listimage';
            }
            else {
                return this._bkGetActionUrl.call(this, action);
            }
        }


        //检验开始
        $('#myform').bootstrapValidator({
            message: 'This value is not valid',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                name: {
                    validators: {
                        notEmpty: {
                            message: '商品名称不能为空'
                        }
                    }

                },
                price: {
                    validators: {
                        notEmpty: {
                            message: '商品价格不能为空'
                        }
                    }

                },
                "type.id": {
                    validators: {
                        notEmpty: {
                            message: '商品类型不能为空'
                        }
                    }

                },
                "brand.id": {
                    validators: {
                        notEmpty: {
                            message: '品牌名称不能为空'
                        }
                    }

                }
            }
        });
        //检验结束
    });
</script>

<!-- the following scripts are used in demo only for onpage help and you don't need them -->
<link rel="stylesheet" href="/res/ace/assets/css/ace.onpage-help.css"/>

<script type="text/javascript"> ace.vars['base'] = '/res/ace'; </script>
<script src="/res/ace/assets/js/src/elements.onpage-help.js"></script>
<script src="/res/ace/assets/js/src/ace.onpage-help.js"></script>

</body>
</html>

