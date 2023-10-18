<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
	<%@ include file="../../static/head.jsp"%>
	<link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css" rel="stylesheet">
	<script type="text/javascript" charset="utf-8">
	    window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
	</script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
  	<style>
		.error{
			color:red;
		}
	</style>
<body>
	<!-- Pre Loader -->
	<div class="loading">
		<div class="spinner">
			<div class="double-bounce1"></div>
			<div class="double-bounce2"></div>
		</div>
	</div>
	<!--/Pre Loader -->
	<div class="wrapper">
		<!-- Page Content -->
		<div id="contentText">
				<!-- Top Navigation -->
				<%@ include file="../../static/topNav.jsp"%>
				<!-- Menu -->
				<div class="container menu-nav">
					<nav class="navbar navbar-expand-lg lochana-bg text-white">
						<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
						 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
							<span class="ti-menu text-white"></span>
						</button>
				
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<!-- <div class="z-navbar-nav-title">$template2.back.menu.title.text</div> -->
							<ul id="navUl" class="navbar-nav mr-auto">
							
							</ul>
						</div>
					</nav>
				</div>
				<!-- /Menu -->
				<!-- Breadcrumb -->
				<!-- Page Title -->
				<div class="container mt-0">
					<div class="row breadcrumb-bar">
						<div class="col-md-6">
							<h3 class="block-title">编辑电影信息</h3>
						</div>
						<div class="col-md-6">
							<ol class="breadcrumb">
								<li class="breadcrumb-item">
									<a href="${pageContext.request.contextPath}/index.jsp">
										<span class="ti-home"></span>
									</a>
								</li>
								<li class="breadcrumb-item"><span>电影信息管理</span></li>
								<li class="breadcrumb-item active"><span>编辑电影信息</span></li>
							</ol>
						</div>
					</div>
				</div>
			<!-- /Page Title -->

			<!-- /Breadcrumb -->
			<!-- Main Content -->
			<div class="container">

				<div class="row">
					<!-- Widget Item -->
					<div class="col-md-12">
						<div class="widget-area-2 lochana-box-shadow">
							<h3 class="widget-title">电影信息信息</h3>
							<form id="addOrUpdateForm">
								<div class="form-row">
									<input id="updateId" name="id" type="hidden">
									<div class="form-group col-md-6">
										<label>电影名称</label>
										<input name="dianyingmingcheng" id="dianyingmingcheng" name="dianyingmingcheng" class="form-control" placeholder="电影名称">
									</div>
									<div class="form-group col-md-6">
										<label>封面</label>
										<div><img id="fengmianImg" src="" width="100" height="100">
										<div class="upload">选择文件<input name="file" type="file" id="fengmianupload" class="form-control-file"></div>
										<input name="fengmian" id="fengmian-input" type="hidden"></div>
									</div>
									<div class="form-group col-md-6">
										<label>电影类型</label>
										<select id="dianyingleixingSelect" name="dianyingleixing" class="form-control">
										</select>	
									</div>	
									<div class="form-group col-md-6">
										<label>导演</label>
										<input name="daoyan" id="daoyan" name="daoyan" class="form-control" placeholder="导演">
									</div>
									<div class="form-group col-md-6">
										<label>演员</label>
										<input name="yanyuan" id="yanyuan" name="yanyuan" class="form-control" placeholder="演员">
									</div>
									<div class="form-group col-md-6">
										<label>电影时长</label>
										<input name="dianyingshizhang" id="dianyingshizhang" name="dianyingshizhang" class="form-control" placeholder="电影时长">
									</div>
									<div class="form-group col-md-6">
										<label>上档日期</label>
										<div id="shangdangriqiDate" class="input-append date form_datetime">
											<input id="shangdangriqi-input" name="shangdangriqi" size="15" type="text" readonly>
											<span class="add-on"><i class="icon-remove"></i></span>
											<span class="add-on"><i class="icon-calendar"></i></span>
										</div>
									</div>
									<div class="form-group col-md-6">
										<label>电影简介</label>
										<input name="dianyingjianjie" id="dianyingjianjie" name="dianyingjianjie" class="form-control" placeholder="电影简介">
									</div>
									<div class="form-group col-md-6">
										<label>发布公司</label>
										<input name="fabugongsi" id="fabugongsi" name="fabugongsi" class="form-control" placeholder="发布公司">
									</div>
									<div class="form-group col-md-6">
										<label>注意事项</label>
										<input name="zhuyishixiang" id="zhuyishixiang" name="zhuyishixiang" class="form-control" placeholder="注意事项">
									</div>
									<div class="form-group col-md-6">
										<label>视频</label>
										<div>
										<div class="upload">选择文件<input name="file" type="file" class="form-control-file" id="shipinupload"></div>
										<label id="shipinFileName"></label>
										<input name="shipin" id="shipin-input" type="hidden">
										</div>
									</div>
									<div class="form-group col-md-6">
										<label>价格</label>
										<input id="price" type="number" name="price" class="form-control" placeholder="价格">
									</div>	
									<div class="form-group col-md-6">
										<label>座位总数</label>
										<input name="number" id="number" name="number" class="form-control" placeholder="座位总数">
									</div>
									<div class="form-group col-md-6">
										<label>已选座位[用,号隔开]</label>
										<textarea  name="selected" class="form-control" id="selected" rows="3"></textarea>
									</div>
										
									<div class="form-group-1 col-md-6 mb-3" style="display: flex;flex-wrap: wrap;">
										<button  id="submitBtn" type="button" class="btn btn-primary btn-lg">提交</button>
										<button id="exitBtn" type="button" class="btn btn-primary btn-lg">取消</button>
									</div>
								</div>
							</form>
						</div>
					</div>
					<!-- /Widget Item -->
				</div>
			</div>
			<!-- /Main Content -->
		</div>
		<!-- /Page Content -->
	</div>
	<!-- Back to Top -->
	<a id="back-to-top" href="#" class="back-to-top">
		<span class="ti-angle-up"></span>
	</a>
	<!-- /Back to Top -->
	<%@ include file="../../static/foot.jsp"%>
	<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
	<script>
		<%@ include file="../../utils/menu.jsp"%>
		<%@ include file="../../static/setMenu.js"%>
		<%@ include file="../../static/utils.js"%>
		<%@ include file="../../utils/baseUrl.jsp"%>   	

		var tableName = "dianyingxinxi";
		var pageType = "add-or-update";
		var updateId = "";
		var crossTableId = -1;
		var crossTableName = '';
		var ruleForm = {};
		var crossRuleForm = {};

		var dianyingleixingOptions = [];

		function dianyingleixingSelect(){
			http("option/dianyingleixing/dianyingleixing","GET",{},(res)=>{
				if(res.code == 0){
					dianyingleixingOptions = res.data;
					var nullOption = document.createElement('option');
					var dianyingleixingSelect = document.getElementById('dianyingleixingSelect');
					dianyingleixingSelect.appendChild(nullOption);
					for(var i=0;i<dianyingleixingOptions.length;i++){
						var dianyingleixingOption = document.createElement('option');
						dianyingleixingOption.setAttribute('name','dianyingleixingOption');
						dianyingleixingOption.setAttribute('value',dianyingleixingOptions[i]);
						dianyingleixingOption.innerHTML = dianyingleixingOptions[i];									
						if(ruleForm.dianyingleixing == dianyingleixingOptions[i]){
							dianyingleixingOption.setAttribute('selected','selected');
						}
						dianyingleixingSelect.appendChild(dianyingleixingOption);
					}
				}
			});
		}	

		var ruleForm = {};
		var vm = new Vue({
		  el: '#addOrUpdateForm',
		  data:{
			  ruleForm : {},
			},
		  beforeCreate: function(){
			  var id = window.sessionStorage.getItem("id");
				if(id != null && id != "" && id != "null"){
					$.ajax({ 
		                type: "GET",
		                url: baseUrl + "dianyingxinxi/info/" + id,
		                beforeSend: function(xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
		                success: function(res){               	
		                	if(res.code == 0){
		                		vm.ruleForm = res.data;
				    		}else if(res.code == 401) {
				    			<%@ include file="../../static/toLogin.jsp"%>    
				    		}else{ alert(res.msg)}
		                },
		            });
				}
			},
			methods: { }
	  	});		

		// 文件上传
		function upload(){
			$('#fengmianupload').fileupload({
				url: baseUrl + 'file/upload',
				headers:{ token: window.sessionStorage.getItem("token")},
				dataType: 'json',
				done: function (e, data) {				
					document.getElementById('fengmian-input').setAttribute('value',"upload/"+data.result.file);
					if(document.getElementById('fengmianFileName') != null){
						document.getElementById('fengmianFileName').innerHTML = "上传成功!";
					}				
					$("#fengmianImg").attr("src",baseUrl+"upload/"+data.result.file);								
				}
			});
			$('#shipinupload').fileupload({
				url: baseUrl + 'file/upload',
				headers:{ token: window.sessionStorage.getItem("token")},
				dataType: 'json',
				done: function (e, data) {				
					document.getElementById('shipin-input').setAttribute('value',"upload/"+data.result.file);
					if(document.getElementById('shipinFileName') != null){
						document.getElementById('shipinFileName').innerHTML = "上传成功!";
					}				
					$("#shipinImg").attr("src",baseUrl+"upload/"+data.result.file);								
				}
			});
		}  
		//取消 
		function cancel() {
            window.location.href = "list.jsp";
		}
		function getQueryString(name) { 
			var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i"); 
			var r = window.location.search.substr(1).match(reg); 
			if (r != null) return unescape(r[2]); 
			return null; 
		}

		// 表单提交
		function submit() {

			var crossFlag = getQueryString("cross");
			if(validform() ==true && compare() == true){
				if(crossFlag) {
				}
				let data = {};
				getContent();
				let value = $('#addOrUpdateForm').serializeArray();
				$.each(value, function (index, item) { 
							data[item.name] = item.value;
						});
				let json = JSON.stringify(data);
				var urlParam;
				var successMes = '';
				if(updateId!=null && updateId!="null" && updateId!=''){
					urlParam = 'update';
					successMes = '修改成功';
				}else{		
					urlParam = 'save';
					successMes = '添加成功';
				}
				//更新跨表属性
			       var crossuserid;
			       var crossrefid;
			       var crossoptnum;
				if(crossFlag) {
					var statusColumnName = window.sessionStorage.getItem('statusColumnName'); 
					var statusColumnValue = window.sessionStorage.getItem('statusColumnValue'); 
					var obj = JSON.parse(window.sessionStorage.getItem('crossObj'));
					if(statusColumnName!='') {
						if(!statusColumnName.startsWith("[")) {
							for (var o in obj){
								if(o==statusColumnName){
									obj[o] = statusColumnValue;
								}
							}
							var table = window.sessionStorage.getItem('crossTableName');
							httpJson(crossTableName + "/update","POST",obj,(res)=>{
								if(res.code == 0){
									console.log('更新属性成功');
								}
							});   
						} else  {
							crossuserid = Number(window.sessionStorage.getItem('userid'));
							crossrefid = obj["id"];
							crossoptnum = window.sessionStorage.getItem('statusColumnName');
							crossoptnum=crossoptnum.replace(/\[/,"").replace(/\]/,"");
						}
					}
				}
				if(crossrefid && crossuserid) {
					data.crossuserid=crossuserid;
					data.crossrefid=crossrefid;
					http("dianyingxinxi/page","GET",{
						page:1,
						limit:10,
						crossuserid:data.crossuserid,
						crossrefid:data.crossrefid,			
					},(res)=>{
						if(res.data.total >= crossoptnum){
							alert(window.sessionStorage.getItem('tips'));
							return false;
						} else {
							httpJson("dianyingxinxi/"+urlParam,"POST",data,(res)=>{
								if(res.code == 0){
									window.sessionStorage.removeItem('id');
									let flag = true;
									if(crossFlag) {
									}

									if(flag){
										alert(successMes);
									}
									if(window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true"){
										window.sessionStorage.removeItem('onlyme');
										window.location.href="${pageContext.request.contextPath}/index.jsp";
									}else{
                                        window.location.href = "list.jsp";
									}
									
								}
							});
						}
					});
				} else {
					httpJson("dianyingxinxi/"+urlParam,"POST",data,(res)=>{
						if(res.code == 0){
							window.sessionStorage.removeItem('id');
							let flag = true;
							if(crossFlag) {
							}

							if(flag){
								alert(successMes);
							}
							if(window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true"){
								window.sessionStorage.removeItem('onlyme');
								window.location.href="${pageContext.request.contextPath}/index.jsp";
							}else{
                                        window.location.href = "list.jsp";
							}
							
						}
					});
				}
			}else{
				alert("表单未填完整或有错误");
			}
		}

		// 填充富文本框
		function setContent(){
		}  

		// 获取富文本框内容
		function getContent(){
		}

		// 表单校验
		function validform() {
			return $("#addOrUpdateForm").validate({ 
				rules: {
				    fengmian: {
					},
				    dianyingleixing: {
					},
				    daoyan: {
					},
				    yanyuan: {
					},
				    dianyingshizhang: {
					},
				    shangdangriqi: {
					},
				    dianyingjianjie: {
					},
				    fabugongsi: {
					},
				    zhuyishixiang: {
					},
				    shipin: {
					},
				    thumbsupnum: {
					digits: true,
					},
				    crazilynum: {
					digits: true,
					},
				    clicktime: {
					},
				    clicknum: {
					digits: true,
					},
				    price: {
					number: true,
					},
				    userid: {
					},
				    number: {
					digits: true,
					},
				    selected: {
					},
				},
				messages: {
					fengmian: {
					},
					dianyingleixing: {
					},
					daoyan: {
					},
					yanyuan: {
					},
					dianyingshizhang: {
					},
					shangdangriqi: {
					},
					dianyingjianjie: {
					},
					fabugongsi: {
					},
					zhuyishixiang: {
					},
					shipin: {
					},
					thumbsupnum: {
						digits: "请输入整数",
					},
					crazilynum: {
						digits: "请输入整数",
					},
					clicktime: {
					},
					clicknum: {
						digits: "请输入整数",
					},
					price: {
						number: "请输入数字",	
					},
					userid: {
					},
					number: {
						digits: "请输入整数",
					},
					selected: {
					},
				}
			}).form();
		}
		// 添加表单校验方法
		function addValidation(){
			jQuery.validator.addMethod("isPhone", function(value, element) {
					var length = value.length;
					var mobile = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1})|(17[0-9]{1}))+\d{8})$/;
					return this.optional(element) || (length == 11 && mobile.test(value));
			}, "请填写正确的手机号码");
                        jQuery.validator.addMethod("isIdCardNo", function(value, element) {
                                return this.optional(element) || value.length == 18;
                        }, "请正确输入您的身份证号码");
                        jQuery.validator.addMethod("isTel", function(value, element) {
                          var length = value.length;
                          var phone = /(^(\d{3,4}-)?\d{6,8}$)|(^(\d{3,4}-)?\d{6,8}(-\d{1,5})?$)|(\d{11})/;
                          return this.optional(element) || (phone.test(value));
                         }, "请填写正确的固定电话");//可以自定义默认提示信息
		}
		// 获取当前详情
		function getDetails() {
			var id = window.sessionStorage.getItem("id");
			if(id != null && id != "" && id != "null"){
				updateId = id;
				window.sessionStorage.removeItem('id');
				http("dianyingxinxi/info/" + id,"GET",{},(res)=>{
					if(res.code == 0){
						ruleForm = res.data
						// 是/否下拉框回显
						setSelectOption();
						// 设置图片src
						showImg();
						// 数据填充
						dataBind();
						// 富文本框回显	
						setContent();
												dianyingleixingSelect();
						//注册表单验证
						$(validform());	
					}
				});
			}else{
				dianyingleixingSelect();	



		 		fill()
				//注册表单验证
		    		$(validform());
			}
		}	
		// 下拉框选项回显
		function setSelectOption(){
		}			
		// 关联下拉框改变
		function lvSelectChange(level){
			let data = {};
			let value = $('#addOrUpdateForm').serializeArray();
			$.each(value, function (index, item) { 
			            data[item.name] = item.value;
			        });
			
		}		
		// 清除可能会重复渲染的selection
		function clear(className){
			var elements = document.getElementsByClassName(className);
        	for(var i = elements.length - 1; i >= 0; i--) { 
        	  elements[i].parentNode.removeChild(elements[i]); 
        	}
		}		
		function dateTimePick(){
			$.fn.datetimepicker.dates['zh-CN'] = { 
		            days: ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期日"],
		            daysShort: ["周日", "周一", "周二", "周三", "周四", "周五", "周六", "周日"],
		            daysMin:  ["日", "一", "二", "三", "四", "五", "六", "日"],
		            months: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
		            monthsShort: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
		            today: "今天",
		            suffix: [],
		            meridiem: ["上午", "下午"]
		    };
			$("#shangdangriqiDate").datetimepicker({ 
				minView: "month",
				autoclose: true,
				format:'yyyy-mm-dd',
				language:'zh-CN',
			});
			$("#clicktimeDate").datetimepicker({ 
				autoclose: true,
				format:'yyyy-mm-dd hh:ii:ss',
				minuteStep:1,
				language:'zh-CN',
			});

		}		
		
		function calculation(){
			//积
			var x = 0;
			//和
			var y = 0;
			var flag = 0;



		}		
		function calculationSE(colName){
			//单列求和接口
			http("dianyingxinxi"+colName,"GET",{
				tableName: "dianyingxinxi",
				columnName: colName
			},(res)=>{
				if(res.code == 0){
					$("#"+colName).attr("value",res.data);
				}
			});
		}	
		function calculationPre(){
			//进入该页面就填充"单列求和"的列
		}			
		
		
			//新增时填充字段
			function fill(){
				var username = window.sessionStorage.getItem('username');
				var accountTableName = window.sessionStorage.getItem('accountTableName');
				http(accountTableName+'/session','GET',{},(res)=>{
					if(res.code == 0){
						var myId = res.data.id;
						$(validform());
					}
				});
							
			}	
			
		function dataBind(){
			$("#updateId").val(ruleForm.id);	
			$("#dianyingmingcheng").val(ruleForm.dianyingmingcheng);	
			$("#fengmian-input").val(ruleForm.fengmian);
			var dianyingleixingOptions = document.getElementsByClassName("dianyingleixingOption");
			for(var dianyingleixingCount = 0; dianyingleixingCount < dianyingleixingOptions.length;dianyingleixingCount++){
				if(dianyingleixingOptions[dianyingleixingCount].getAttribute('value') == ruleForm.dianyingleixing){
					dianyingleixingOptions[dianyingleixingCount].setAttribute('selected','selected');
				}
			}
			$("#daoyan").val(ruleForm.daoyan);	
			$("#yanyuan").val(ruleForm.yanyuan);	
			$("#dianyingshizhang").val(ruleForm.dianyingshizhang);	
			$("#shangdangriqi-input").val(ruleForm.shangdangriqi);
			$("#dianyingjianjie").val(ruleForm.dianyingjianjie);	
			$("#fabugongsi").val(ruleForm.fabugongsi);	
			$("#zhuyishixiang").val(ruleForm.zhuyishixiang);	
			$("#shipin-input").val(ruleForm.shipin);
			$("#shipinFileName").html(ruleForm.shipin);


				
			
			$("#price").val(ruleForm.price);	
			$("#userid").val(ruleForm.userid);	
			$("#number").val(ruleForm.number);	
			$("#selected").val(ruleForm.selected);
		}		
		//图片显示
		function showImg(){
			var fengmianFileName = "\"" + ruleForm.fengmian + "\"";
			$("#fengmianImg").attr("src",baseUrl+ruleForm.fengmian);
		}		
		//跨表

        //跨表
        function crossTable(){
		crossTableName = window.sessionStorage.getItem('crossTableName');
		crossTableId = window.sessionStorage.getItem('crossTableId');
		if(crossTableName != null && crossTableName != '' && crossTableId != null && crossTableId != '' && crossTableId != -1){
			http(crossTableName + "/info/" + crossTableId,"GET",{},(res)=>{
				if(res.code == 0){
					crossRuleForm = res.data;
					$('#updateId').val(crossTableId);
					if(res.data != null && res.data != '' && res.data.dianyingmingcheng != null && res.data.dianyingmingcheng != ''){

						$("#dianyingmingcheng").val(res.data.dianyingmingcheng);
						$("#dianyingmingcheng").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.fengmian != null && res.data.fengmian != ''){

						$("#fengmianImg").attr("src",baseUrl+res.data.fengmian);
						$("#fengmian-input").val(res.data.fengmian);
					}
					if(res.data != null && res.data != '' && res.data.dianyingleixing != null && res.data.dianyingleixing != ''){

						var dianyingleixingOptions = document.getElementsByClassName("dianyingleixingOption");
						for(var dianyingleixingCount = 0; dianyingleixingCount < dianyingleixingOptions.length;dianyingleixingCount++){
							if(dianyingleixingOptions[dianyingleixingCount].getAttribute('value') == res.data.dianyingleixing){
								dianyingleixingOptions[dianyingleixingCount].setAttribute('selected','selected');
							}
						}
					}
					if(res.data != null && res.data != '' && res.data.daoyan != null && res.data.daoyan != ''){

						$("#daoyan").val(res.data.daoyan);
						$("#daoyan").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.yanyuan != null && res.data.yanyuan != ''){

						$("#yanyuan").val(res.data.yanyuan);
						$("#yanyuan").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.dianyingshizhang != null && res.data.dianyingshizhang != ''){

						$("#dianyingshizhang").val(res.data.dianyingshizhang);
						$("#dianyingshizhang").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.shangdangriqi != null && res.data.shangdangriqi != ''){

						$("#shangdangriqi-input").val(res.data.shangdangriqi);
						$('#shangdangriqiFileName').val(res.data.shangdangriqi)
					}
					if(res.data != null && res.data != '' && res.data.dianyingjianjie != null && res.data.dianyingjianjie != ''){

						$("#dianyingjianjie").val(res.data.dianyingjianjie);
						$("#dianyingjianjie").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.fabugongsi != null && res.data.fabugongsi != ''){

						$("#fabugongsi").val(res.data.fabugongsi);
						$("#fabugongsi").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.zhuyishixiang != null && res.data.zhuyishixiang != ''){

						$("#zhuyishixiang").val(res.data.zhuyishixiang);
						$("#zhuyishixiang").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.shipin != null && res.data.shipin != ''){

						$("#shipin-input").val(res.data.shipin);
						$('#shipinFileName').val(res.data.shipin)
					}
					if(res.data != null && res.data != '' && res.data.thumbsupnum != null && res.data.thumbsupnum != ''){

					}
					if(res.data != null && res.data != '' && res.data.crazilynum != null && res.data.crazilynum != ''){

					}
					if(res.data != null && res.data != '' && res.data.clicktime != null && res.data.clicktime != ''){

					}
					if(res.data != null && res.data != '' && res.data.clicknum != null && res.data.clicknum != ''){

					}
					if(res.data != null && res.data != '' && res.data.price != null && res.data.price != ''){

						$("#price").val(res.data.price);
						$("#price").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.userid != null && res.data.userid != ''){

						$("#userid").val(res.data.userid);
						$("#userid").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.number != null && res.data.number != ''){

						$("#number").val(res.data.number);
						$("#number").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.selected != null && res.data.selected != ''){

						$("#selected").val(res.data.selected);
					}
				}
			});  
            }
		window.sessionStorage.removeItem('crossTableName');
		window.sessionStorage.removeItem('crossTableId');
        }
		
		//跨表更新字段
		function crossTableUpdate(){
			let flag = crossTableUpdateValidation();
			if(flag){
				httpJson(crossTableName + "/update","POST",{
					id: crossTableId,
				},(res)=>{
					if(res.code == 0){
						console.log('跨表更新成功');
						return true;
					}
				});   
			}
			return false;
		}

		//跨表更新前验证
		function crossTableUpdateValidation(){
			//防止减法导致库存负值
			return true;
		}
		$(document).ready(function() { 
			//设置右上角用户名
			$('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
			//设置项目名
			$('.sidebar-header h3 a').html(projectName)
			//设置导航栏菜单
			setMenu();
			//初始化时间插件
			dateTimePick();
			//添加表单校验信息文本
			addValidation();
			getDetails();
			//初始化上传按钮
			upload();
			//单列求和
			calculationPre();
			//跨表
			crossTable();
			<%@ include file="../../static/myInfo.js"%>
			$('#submitBtn').on('click', function(e) {
			    e.preventDefault();
			    //console.log("点击了...提交按钮");
			    submit();
			});
			$('#exitBtn').on('click', function(e) {
			    cancel();
			});
			readonly();
		});		

		function readonly(){
            if(window.sessionStorage.getItem('role')!="管理员") {
				$('#money').attr('readonly','readonly');
            }
		}

		//比较大小
		function compare(){
			var largerVal = null;
			var smallerVal = null;
			if(largerVal !=null && smallerVal != null){
				if(parseInt(largerVal)<=parseInt(smallerVal)){
					alert(smallerName+'不能大于等于'+largerName);
					return false;
				}
			}
			return true;
		}


		// 用户登出
        <%@ include file="../../static/logout.jsp"%>		
	</script>
</body>

</html>
