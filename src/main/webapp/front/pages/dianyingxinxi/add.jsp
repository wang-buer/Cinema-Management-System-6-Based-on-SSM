<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>注册</title>
		<!-- bootstrap样式，地图插件使用 -->
		<link rel="stylesheet" href="../../css/bootstrap.min.css" />
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		html::after {
			position: fixed;
			top: 0;
			right: 0;
			left: 0;
			bottom: 0;
			content: '';
			display: block;
			background-attachment: fixed;
			background-size: cover;
			background-position: center;
			z-index: -1;
		}
		#swiper {
			overflow: hidden;
			margin: 0 auto;
		}
		#swiper .layui-carousel-ind li {
			width: 16px;
			height: 10px;
			border-width: 0;
			border-style: solid;
			border-color: rgba(0,0,0,.3);
			border-radius: 3px;
			background-color: rgba(82, 82, 82, 1);
			box-shadow: 0 0 0px rgba(110,22,64,.8);
		}
		#swiper .layui-carousel-ind li.layui-this {
			width: 34px;
			height: 10px;
			border-width: 0;
			border-style: solid;
			border-color: rgba(0,0,0,.3);
			border-radius: 10px;
			background-color: rgba(255, 255, 255, 1);
			box-shadow: 0 0 0px rgba(110,22,64,.8);
		}
		
		button, button:focus {
			outline: none;
		}
		
		.data-add-container .add .layui-select-title .layui-unselect {
			padding: 0 12px;
			height: 40px;
			font-size: 14px;
			color: #333;
			border-radius: 4px;
			border-width: 1px;
			border-style: solid;
			border-color: #DCDFE6;
			background-color: #fff;
			box-shadow: 0 0 6px #6b6b6b;
			text-align: left;
		}
		.data-add-container .add .layui-form-item {
			display: flex;
			align-items: center;
			justify-content: center;
		}
		.data-add-container .layui-form-pane .layui-form-item[pane] .layui-form-label {
			margin: 0;
			position: inherit;
			background: transparent;
			border: 0;
		}
		.data-add-container .add .layui-input-block {
			margin: 0;
			flex: 1;
		}
		.data-add-container .layui-form-pane .layui-form-item[pane] .layui-input-inline {
			margin: 0;
			flex: 1;
			display: flex;
		}
	</style>
	<body>


		<div id="app">
		
			<!-- 轮播图 -->
			<!-- <div class="layui-carousel" id="swiper">
				<div carousel-item id="swiper-item">
					<div v-for="(item,index) in swiperList" v-bind:key="index">
						<img class="swiper-item" :src="item.img">
					</div>
				</div>
			</div> -->
			<div class="layui-carousel" id="swiper" :style='{"boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 auto","borderColor":"rgba(0,0,0,.3)","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid"}'>
			  <div carousel-item id="swiper-item">
				<div v-for="(item,index) in swiperList" :key="index">
					<img style="width: 100%;height: 100%;object-fit:cover;" :src="item.img" />
				</div>
			  </div>
			</div>
			<!-- 轮播图 -->
		
			<div class="data-add-container">
		
				<form class="layui-form layui-form-pane" lay-filter="myForm">
					
		            <div class="layui-form-item" pane>
						<label class="layui-form-label">电影名称：</label>
						<div class="layui-input-block">
							<input v-model="detail.dianyingmingcheng" type="text" :readonly="ro.dianyingmingcheng" name="dianyingmingcheng" id="dianyingmingcheng" autocomplete="off" class="layui-input">
						</div>
					</div>
		            <div class="layui-form-item" pane>
						<label class="layui-form-label">封面：</label>
						<div v-if="detail.fengmian" class="layui-input-block">
							<img id="fengmianImg" style="width: 100px;height: 100px;border-radius: 50%;border: 2px solid #EEEEEE;" :src="baseurl+detail.fengmian">
							<input type="hidden" :value="detail.fengmian" id="fengmian" name="fengmian" />
						</div>
						<div class="layui-input-block">
							<button v-if="!ro.fengmian" type="button" class="layui-btn btn-theme" id="fengmianUpload">
								<i class="layui-icon">&#xe67c;</i>上传封面
							</button>
						</div>
					</div>
		            <div class="layui-form-item" pane>
		                <label class="layui-form-label">电影类型</label>
		                <div class="layui-input-block">
		                    <select name="dianyingleixing" id="dianyingleixing" lay-filter="dianyingleixing"  >
		                        <option value="">请选择</option>
		                        <option v-for="(item,index) in dianyingleixing" v-bind:key="index" :value="item">{{item}}</option>
		                    </select>
		                </div>
		            </div>
		            <div class="layui-form-item" pane>
						<label class="layui-form-label">导演：</label>
						<div class="layui-input-block">
							<input v-model="detail.daoyan" type="text" :readonly="ro.daoyan" name="daoyan" id="daoyan" autocomplete="off" class="layui-input">
						</div>
					</div>
		            <div class="layui-form-item" pane>
						<label class="layui-form-label">演员：</label>
						<div class="layui-input-block">
							<input v-model="detail.yanyuan" type="text" :readonly="ro.yanyuan" name="yanyuan" id="yanyuan" autocomplete="off" class="layui-input">
						</div>
					</div>
		            <div class="layui-form-item" pane>
						<label class="layui-form-label">电影时长：</label>
						<div class="layui-input-block">
							<input v-model="detail.dianyingshizhang" type="text" :readonly="ro.dianyingshizhang" name="dianyingshizhang" id="dianyingshizhang" autocomplete="off" class="layui-input">
						</div>
					</div>
		            <div class="layui-form-item" pane>
						<label class="layui-form-label">上档日期：</label>
						<div class="layui-input-block">
							<input type="text" name="shangdangriqi" id="shangdangriqi" autocomplete="off" class="layui-input" >
						</div>
					</div>
		            <div class="layui-form-item" pane>
						<label class="layui-form-label">电影简介：</label>
						<div class="layui-input-block">
							<input v-model="detail.dianyingjianjie" type="text" :readonly="ro.dianyingjianjie" name="dianyingjianjie" id="dianyingjianjie" autocomplete="off" class="layui-input">
						</div>
					</div>
		            <div class="layui-form-item" pane>
						<label class="layui-form-label">发布公司：</label>
						<div class="layui-input-block">
							<input v-model="detail.fabugongsi" type="text" :readonly="ro.fabugongsi" name="fabugongsi" id="fabugongsi" autocomplete="off" class="layui-input">
						</div>
					</div>
		            <div class="layui-form-item" pane>
						<label class="layui-form-label">注意事项：</label>
						<div class="layui-input-block">
							<input v-model="detail.zhuyishixiang" type="text" :readonly="ro.zhuyishixiang" name="zhuyishixiang" id="zhuyishixiang" autocomplete="off" class="layui-input">
						</div>
					</div>
		            <div class="layui-form-item" pane>
						<label class="layui-form-label">视频：</label>
						<div v-if="detail.shipin" class="layui-input-block">
							<video style="width: 100%;" :src="detail.shipin" controls="controls">
								您的浏览器不支持视频播放
							</video>
		                    <input type="hidden" :value="detail.shipin" id="shipin" name="shipin" />
						</div>
						<div class="layui-input-block">
							<button type="button" class="layui-btn btn-theme" id="shipinUpload">
								<i class="layui-icon">&#xe67c;</i>上传视频
							</button>
						</div>
					</div>
		            <div class="layui-form-item" pane>
						<label class="layui-form-label">价格：</label>
						<div class="layui-input-block">
							<input v-model="detail.price" type="text" :readonly="ro.price" name="price" id="price" autocomplete="off" class="layui-input">
						</div>
					</div>
		            <div class="layui-form-item" pane>
						<label class="layui-form-label">座位总数：</label>
						<div class="layui-input-block">
							<input v-model="detail.number" type="text" :readonly="ro.number" name="number" id="number" autocomplete="off" class="layui-input">
						</div>
					</div>
		            
		
					<div class="layui-form-item">
						<div class="layui-input-block" style="text-align: right;margin-right: 30px;">
							<button  class="layui-btn btn-submit" lay-submit lay-filter="*">提交</button>
							<button type="reset" class="layui-btn layui-btn-primary">重置</button>
						</div>
					</div>
				</form>
			</div>
		</div>

		<script src="../../layui/layui.js"></script>
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<!-- 校验格式工具类 -->
		<script src="../../js/validate.js"></script>
		<!-- 地图 -->
		<script type="text/javascript" src="../../js/jquery.js"></script>
		<script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&key=ca04cee7ac952691aa67a131e6f0cee0"></script>
		<script type="text/javascript" src="../../js/bootstrap.min.js"></script>
		<script type="text/javascript" src="../../js/bootstrap.AMapPositionPicker.js"></script>

		<script>
			var jquery = $;
			
			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
					swiperList: [{
						img: '../../img/banner.jpg'
					}],
					baseurl: '',
					dataList: [],
					ro:{
                                        dianyingmingcheng : false,
                                        fengmian : false,
                                        dianyingleixing : false,
                                        daoyan : false,
                                        yanyuan : false,
                                        dianyingshizhang : false,
                                        shangdangriqi : false,
                                        dianyingjianjie : false,
                                        fabugongsi : false,
                                        zhuyishixiang : false,
                                        shipin : false,
                                        thumbsupnum : false,
                                        crazilynum : false,
                                        clicktime : false,
                                        clicknum : false,
                                        price : false,
                                        userid : false,
                                        number : false,
                                        selected : false,
					},
                    detail: {
                        dianyingmingcheng: '',
                        fengmian: '',
                        dianyingleixing: '',
                        daoyan: '',
                        yanyuan: '',
                        dianyingshizhang: '',
                        shangdangriqi: '',
                        dianyingjianjie: '',
                        fabugongsi: '',
                        zhuyishixiang: '',
                        shipin: '',
                        thumbsupnum: '',
                        crazilynum: '',
                        clicktime: '',
                        clicknum: '',
                        price: '',
                        userid: '',
                        number: '',
                        selected: '',
                    },
					dianyingleixing: [],
					centerMenu: centerMenu
				},
				updated: function() {
					layui.form.render('select', 'myForm');
				},
                computed: {



                },
				methods: {
					jump(url) {
						jump(url)
					}
				}
			})


			layui.use(['layer', 'element', 'carousel', 'http', 'jquery', 'form', 'upload', 'laydate','tinymce'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				var form = layui.form;
				var upload = layui.upload;
				var laydate = layui.laydate;
				var tinymce = layui.tinymce;
				vue.baseurl = http.baseurl;

				// 获取轮播图 数据
				http.request('config/list', 'get', {
					page: 1,
					limit: 5
				}, function(res) {
					if (res.data.list.length > 0) {
						var swiperItemHtml = '';
						for (let item of res.data.list) {
							if (item.name.indexOf('picture') >= 0 && item.value && item.value != "" && item.value != null) {
								swiperItemHtml +=
									'<div>' +
									'<img style="width: 100%;height: 100%;object-fit:cover;" class="swiper-item" src="' + http.baseurl+item.value + '">' +
									'</div>';
							}
						}
						jquery('#swiper-item').html(swiperItemHtml);
						// 轮播图
						vue.$nextTick(() => {
						  carousel.render({
						  	elem: '#swiper',
							width: '100%',
						  	height: '400px',
						  	arrow: 'hover',
						  	anim: 'default',
						  	autoplay: 'true',
						  	interval: '3000',
						  	indicator: 'inside'
						  });
						
						})
					}
				});

				// 上传图片
				var fengmianUpload = upload.render({
					//绑定元素
					elem: '#fengmianUpload',
					//上传接口
					url: http.baseurl + 'file/upload',
					// 请求头
					headers: {
						Token: localStorage.getItem('Token')
					},
					// 允许上传时校验的文件类型
					accept: 'images',
					before: function() {
						//loading层
						var index = layer.load(1, {
							shade: [0.1, '#fff'] //0.1透明度的白色背景
						});
					},
					// 上传成功
					done: function(res) {
						console.log(res);
						layer.closeAll();
						if (res.code == 0) {
							layer.msg("上传成功", {
								time: 2000,
								icon: 6
							})
							var url = 'upload/' + res.file;
							jquery('#fengmian').val(url);
							jquery('#fengmianImg').attr('src', http.baseurl +url)
							vue.detail.fengmian = url;
						} else {
							layer.msg(res.msg, {
								time: 2000,
								icon: 5
							})
						}
					},
					//请求异常回调
					error: function() {
						layer.closeAll();
						layer.msg("请求接口异常", {
							time: 2000,
							icon: 5
						})
					}
				});
				http.request(`option/dianyingleixing/dianyingleixing`,'get',{},(res)=>{
					vue.dianyingleixing = res.data
				});
				laydate.render({
					elem: '#shangdangriqi'
				});
                var shipinUpload = upload.render({
					//绑定元素
					elem: '#shipinUpload',
					//上传接口
					url: http.baseurl + 'file/upload',
					// 请求头
					headers: {
						Token: localStorage.getItem('Token')
					},
					// 允许上传时校验的文件类型
					accept: 'video',
					before: function() {
						//loading层
						var index = layer.load(1, {
							shade: [0.1, '#fff'] //0.1透明度的白色背景
						});
					},
					// 上传成功
					done: function(res) {
						console.log(res);
						layer.closeAll();
						if (res.code == 0) {
							layer.msg("上传成功", {
								time: 2000,
								icon: 6
							})
							var url = 'upload/' + res.file;
							jquery('#shipin').val(url);
							vue.detail.shipin = url;
						} else {
							layer.msg(res.msg, {
								time: 2000,
								icon: 5
							})
						}
					},
					//请求异常回调
					error: function() {
						layer.closeAll();
						layer.msg("请求接口异常", {
							time: 2000,
							icon: 5
						})
					}
				});
				laydate.render({
					elem: '#clicktime',
					type: 'datetime'
				});
				
                // session独取
				let table = localStorage.getItem("userTable");
				http.request(`${table}/session`, 'get', {}, function(data) {
					// 表单赋值
					//form.val("myForm", data.data);
					data = data.data
					for(var key in data){
					}
				});

                // 跨表计算
                if(http.getParam('corss')){
					var obj = JSON.parse(localStorage.getItem('crossObj'));
					//form.val("myForm", obj);
					for(var o in obj){
                                        if(o=='dianyingmingcheng'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.dianyingmingcheng = true;
                                                continue;
                                        }
                                        if(o=='fengmian'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.fengmian = true;
                                                continue;
                                        }
                                        if(o=='dianyingleixing'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.dianyingleixing = true;
                                                continue;
                                        }
                                        if(o=='daoyan'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.daoyan = true;
                                                continue;
                                        }
                                        if(o=='yanyuan'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.yanyuan = true;
                                                continue;
                                        }
                                        if(o=='dianyingshizhang'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.dianyingshizhang = true;
                                                continue;
                                        }
                                        if(o=='shangdangriqi'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.shangdangriqi = true;
                                                jquery('#shangdangriqi').val(obj[o]);
                                                continue;
                                        }
                                        if(o=='dianyingjianjie'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.dianyingjianjie = true;
                                                continue;
                                        }
                                        if(o=='fabugongsi'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.fabugongsi = true;
                                                continue;
                                        }
                                        if(o=='zhuyishixiang'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.zhuyishixiang = true;
                                                continue;
                                        }
                                        if(o=='shipin'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.shipin = true;
                                                continue;
                                        }
                                        if(o=='thumbsupnum'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.thumbsupnum = true;
                                                continue;
                                        }
                                        if(o=='crazilynum'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.crazilynum = true;
                                                continue;
                                        }
                                        if(o=='clicktime'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.clicktime = true;
                                                jquery('#clicktime').val(obj[o]);
                                                continue;
                                        }
                                        if(o=='clicknum'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.clicknum = true;
                                                continue;
                                        }
                                        if(o=='price'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.price = true;
                                                continue;
                                        }
                                        if(o=='userid'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.userid = true;
                                                continue;
                                        }
                                        if(o=='number'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.number = true;
                                                continue;
                                        }
                                        if(o=='selected'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.selected = true;
                                                continue;
                                        }
					}
				}
				

				// 提交
				form.on('submit(*)', function(data) {
					data = data.field;
					
                    // 数据校验
                    if(!isIntNumer(data.thumbsupnum)){
                        layer.msg('赞应输入整数', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!isIntNumer(data.crazilynum)){
                        layer.msg('踩应输入整数', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!isIntNumer(data.clicknum)){
                        layer.msg('点击次数应输入整数', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!isNumber(data.price)){
                        layer.msg('价格应输入数字', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!isIntNumer(data.number)){
                        layer.msg('座位总数应输入整数', {
							time: 2000,
							icon: 5
						});
                        return false
                    }

					// 跨表计算判断
					
                    // 比较大小

                //更新跨表属性
               var crossuserid;
               var crossrefid;
               var crossoptnum;
                if(http.getParam('corss')){
                        var statusColumnName = localStorage.getItem('statusColumnName');
                        var statusColumnValue = localStorage.getItem('statusColumnValue');
                        if(statusColumnName!='') {
                                var obj = JSON.parse(localStorage.getItem('crossObj'));
				if(!statusColumnName.startsWith("[")) {
					for (var o in obj){
						if(o==statusColumnName){
							obj[o] = statusColumnValue;
						}
					}
					var table = localStorage.getItem('crossTable');
					http.requestJson(`${table}/update`,'post',obj,(res)=>{});
				} else {
                                       crossuserid=Number(localStorage.getItem('userid'));
                                       crossrefid=obj['id'];
                                       crossoptnum=localStorage.getItem('statusColumnName');
                                       crossoptnum=crossoptnum.replace(/\[/,"").replace(/\]/,"");
				}
                        }
                }
                        if(crossrefid && crossuserid) {
                                data.crossuserid=crossuserid;
                                data.crossrefid=crossrefid;
                                http.request('dianyingxinxi/list', 'get', {
                                        page: 1,
                                        limit: 10,
                                        crossuserid:crossuserid,
                                        crossrefid:crossrefid,
                                }, function(res) {
                                        if(res.data.total>=crossoptnum) {
                                                layer.msg(localStorage.getItem('tips'), {
                                                        time: 2000,
                                                        icon: 6
                                                })
                                             return false;
                                        } else {
                                            // 跨表计算



                                            // 提交数据
                                            http.requestJson('dianyingxinxi' + '/add', 'post', data, function(res) {
                                                    layer.msg('提交成功', {
                                                            time: 2000,
                                                            icon: 6
                                                    }, function() {
                                                            back();
                                                    });
                                             });
                                        }
                                });
                        } else {
                                // 跨表计算

                                // 提交数据
                                http.requestJson('dianyingxinxi' + '/add', 'post', data, function(res) {
                                        layer.msg('提交成功', {
                                                time: 2000,
                                                icon: 6
                                        }, function() {
                                                back();
                                        });
                                 });
                        }
			return false
			});
		});
		</script>
	</body>
</html>
