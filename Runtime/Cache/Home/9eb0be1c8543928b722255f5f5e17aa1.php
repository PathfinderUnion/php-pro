<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta name="renderer" content="webkit">
	<meta name="format-detection" content="telephone=no">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title><?php echo C('web_title');?></title>
	<meta name="Keywords" content="<?php echo C('web_keywords');?>">
	<meta name="Description" content="<?php echo C('web_description');?>">
	<meta name="author" content="zuocoin.com">
	<meta name="coprright" content="zuocoin.com">
	<link rel="shortcut icon" href=" /favicon.ico"/>
	<link rel="stylesheet" href="/Public/Home/css/zuocoin.css"/>
	<link rel="stylesheet" href="/Public/Home/css/style.css"/>
	<link rel="stylesheet" href="/Public/Home/css/slide-unlock.css"/>
	<link rel="stylesheet" href="/Public/Home/css/font-awesome.min.css"/>
	<script type="text/javascript" src="/Public/Home/js/jquery.min.js"></script>
	<script type="text/javascript" src="/Public/Home/js/jquery.flot.js"></script>
	<script type="text/javascript" src="/Public/Home/js/jquery.cookies.2.2.0.js"></script>
	<script type="text/javascript" src="/Public/Home/js/jquery.slideunlock.js"></script>
	<script type="text/javascript" src="/Public/layer/layer.js"></script>
	<script>
		var _hmt = _hmt || [];
		(function() {
		  var hm = document.createElement("script");
		  hm.src = "https://hm.baidu.com/hm.js?2ca0b0d15f83707f9a4b65802faf0f48";
		  var s = document.getElementsByTagName("script")[0]; 
		  s.parentNode.insertBefore(hm, s);
		})();
	</script>

</head>
<body>
<div class="header bg_w" id="trade_aa_header">
	<div class="hearder_top">
		<div class="autobox po_re zin100" id="header">
			<div class="welcome"><?php echo C('top_name');?></div>
			<div class="right orange" id="login">
				<?php if(($_SESSION['userId']) > "0"): ?><dl class="mywallet">
						<dt id="user-finance">
						<div class="mywallet_name clear">
							<a href="/finance/"><?php echo (session('userName')); ?></a><i></i>
						</div>
						<div class="mywallet_list" style="display: none;">
							<div class="clear">
								<ul class="balance_list">
									<h4>可用余额</h4>
									<li>
										<a href="javascript:void(0)"><em style="margin-top: 5px;" class="deal_list_pic_cny"></em><strong>人民币：</strong><span><?php echo ($userCoin_top['cny']*1); ?></span></a>
									</li>
								</ul>
								<ul class="freeze_list">
									<h4>委托冻结</h4>
									<li>
										<a href="javascript:void(0)"><em style="margin-top: 5px;" class="deal_list_pic_cny"></em><strong>人民币：</strong><span><?php echo ($userCoin_top['cnyd']*1); ?></span></a>
									</li>
								</ul>
							</div>
							<div class="mywallet_btn_box">
								<a href="/finance/mycz.html">充值</a><a href="/finance/mytx.html">提现</a><a href="/finance/myzr.html">转入</a><a href="/finance/myzc.html">转出</a><a href="/finance/mywt.html">委托管理</a><a href="/finance/mycj.html">成交查询</a>
							</div>
						</div>
						</dt>
						<dd>
							ID：<span><?php echo (session('userId')); ?></span>
						</dd>
						<dd>
							<a href="<?php echo U('Login/loginout');?>">退出</a>
						</dd>
					</dl>
					<?php else: ?> <!-- 登陆前 -->
					<div class="orange">
						<span class="zhuce"><a class="orange" href="<?php echo U('Login/register');?>">注册</a></span> |
						<a href="javascript:;" class="orange" onClick="loginpop();">登录</a>
					</div><?php endif; ?>
			</div>
			<div class="nav  nav_po_1" id="menu_nav" style=" height: 30px;">
				<ul>
					<li style=" text-align: right; margin-right: 20px;">
						<a href="/" id="index_box">首页</a>
					</li>
					<li>
						<a id="trade_box" href="<?php echo U('Trade/index');?>"><span>交易中心</span>
							<img src="/Public/Home/images/down.png"></a>
						<div class="deal_list " style="display: none;    top: 36px;">
							<dl id="menu_list_json"></dl>
							<div class="sj"></div>
							<div class="nocontent"></div>
						</div>
					</li>

					<?php if(is_array($daohang)): $i = 0; $__LIST__ = $daohang;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li>
							<a id="<?php echo ($vo['name']); ?>_box" href="/<?php echo ($vo['url']); ?>"><?php echo ($vo['title']); ?></a>
						</li><?php endforeach; endif; else: echo "" ;endif; ?>

				</ul>
			</div>
		</div>
	</div>
	<div style="clear: both;"></div>
	<div class="autobox clear" id="trade_clear">
		<div class="logo">
			<a href="/"><img src="/Upload/public/<?php echo ($C['web_logo']); ?>" alt=""/></a>
		</div>
		<div class="phone right">
			<span class="iphone" style=""></span><a href="http://wpa.qq.com/msgrd?V=3&amp;uin=<?php echo C('contact_qq')[0];?>&amp;Site=QQ客服&amp;Menu=yes" target="_blank" class="qqkefu"></a>
		</div>
	</div>
</div>

<script>
	$.getJSON("/Ajax/getJsonMenu?t=" + Math.random(), function (data) {
		if (data) {
			var list = '';
			for (var i in data) {
				list += '<dd><a href="/Trade/index/market/' + data[i]['name'] + '"><img src="/Upload/coin/' + data[i]['img'] + '" style="width: 18px; margin-right: 5px;">' + data[i]['title'] + '</a></dd>';
			}
			$("#menu_list_json").html(list);
		}
	});
	$('#trade_box').hover(function () {
		$('.deal_list').show()
	}, function () {
		$('.deal_list').hide()
	});
	$('.deal_list').hover(function () {
		$('.deal_list').show()
	}, function () {
		$('.deal_list').hide()
	});
	$('#user-finance').hover(function () {
		$('.mywallet_list').show();
	}, function () {
		$('.mywallet_list').hide()
	});
</script>
<!--头部结束-->
<div class="wrapbody">
	<div class="main">
		<div class="myright" style="width: 1168px;margin-top: 10px;">
			<div class="wraphtml">
				<div class="f_title clearfix">
					<div class="f_title_span left">
						<span class="current">
						<i></i>
							<a href="<?php echo U('Vote/index');?>">新币投票</a>
						</span>
					</div>
				</div>
				<?php if(!empty($prompt_text)): ?><div class="mytips" style="    margin: 0px;">
						<h6 style="color: #FF8000;">温馨提示</h6>
						<?php echo ($prompt_text); ?>
					</div><?php endif; ?>
				<div class="f_body">
					<table class="f_table" id="investLog_content">
						<thead>
						<tr>
							<th id="sublist-grid_c0" style="width: 150px;">币种</th>
							<th id="sublist-grid_c2">支持</th>
							<th id="sublist-grid_c3">反对</th>
							<th id="sublist-grid_c1">总数</th>
							<th id="sublist-grid_c4" style="width: 460px;">比例</th>
							<th id="sublist-grid_c6" style="width: 150px;">操作</th>
						</tr>
						</thead>
						<tbody>
						<?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><tr>
								<td>
									<img src="/Upload/coin/<?php echo ($vo['img']); ?>" alt="" style="margin-bottom: -7px; width: 22px;    margin-right: 7px;"/><?php echo ($vo['title']); ?>
								</td>
								<td><?php echo ($vo['zhichi']); ?></td>
								<td><?php echo ($vo['fandui']); ?></td>
								<td><?php echo ($vo['zongji']); ?></td>
								<td>
									<div class="proInvestment" style="width: 460px;">
										<i style="margin-right: 5px;"> </i><em class="fff6d00"><?php echo ($vo['bili']); ?>%</em>
										<div class="p_bar" style="float: left;margin-top: 0px;">
											<span style="width:<?php echo ($vo['bili']); ?>%"></span>
										</div>
									</div>
								</td>
								<td>
									<a onclick="javascript:Update(1,'<?php echo ($vo['name']); ?>');" href="javascript:void(0)" style="color: #0F9932;">支持</a>
									<a onclick="javascript:Update(2,'<?php echo ($vo['name']); ?>');" href="javascript:void(0)" style="color: orangered;">反对</a>
								</td>
							</tr><?php endforeach; endif; else: echo "" ;endif; ?>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div><br>
<div id="dialogBoxShadow" style="position: absolute; top: 0px; left: 0px; z-index: 100; background-color: rgb(0, 0, 0); opacity: 0.4; width: 100%; background-position: initial initial; background-repeat: initial initial; display: none;"></div>
<script type="text/javascript">
	function Update(type, coinname) {

		$.post("/Vote/up", {
			type: type,
			coinname: coinname,
		}, function (data) {
			if (data.status == 1) {
				layer.msg(data.info, {icon: 1});
				window.setTimeout("window.location='/Vote/index'", 1000);
			} else {
				layer.msg(data.info, {icon: 2});
				if (data.url) {
					window.setTimeout("window.location=" + data.url, 1000);
				}
			}
		}, "json");
	}
</script>
<script>
	$('#vote_box').addClass('active');
</script>
<style>
	.footer{
		clear:both;
	}

	.footer .main{
		height:240px;
	}

	#footer a{
		color:#FFF;
		margin:0px 0px;
	}

	.footer .bottom{
		height:80px;
		background:#2C2C2C;
	}

	.footer .main .list{
		float:left;
		margin-top:40px;
		width: 185px;
		padding: 0px 5px;
	}

	.footer .main .list label{
		margin-top:10px;
		display:block;
		font-weight:bold;
		color:#FFF;
		font-size:16px;
		text-align: left;
		padding-left: 45px;
	}

	.footer .main .list ul{
		margin:10px 0px 0px;
		padding:0px;
	}

	.footer .main .list li{
		display:block;
		height:30px;
		line-height:30px;
		color:#CCC;
		text-align:center;
		list-style:none;
		text-align: left;
		padding-left: 45px;
	}

	.footer .main .list li a{
		display:block;
		width:100%;
		height:100%;
		color:#CCC;
		font-size:14px;
	}

	.footer .about_me{
		float:left;
		margin-top:40px;
		width:280px;
		height:150px;
		border-right:1px #606060 solid;
		padding-right:50px;
	}

	.footer .wx{
		margin-top:50px;
		height:55px;
	}

	.footer .wx a{
		position:relative;
		margin:0 14px;
		cursor:pointer;
	}

	.footer .wx a img{

		left:-69px;

		transition:300ms;
		-webkit-transition:300ms;
		-ms-transition:300ms;
		-o-transition:300ms;
		-moz-transition:300ms;
	}

	.footer .wx a:hover img{
		display:block;
		top:-180px;
	}

	.footer .footer_wx_icon{
		float:left;

		border-radius:55px;
		-webkit-border-radius:55px;
		-ms-border-radius:55px;
		-o-border-radius:55px;
		-moz-border-radius:55px;

		transition:300ms;
		-webkit-transition:300ms;
		-ms-transition:300ms;
		-o-transition:300ms;
		-moz-transition:300ms;
	}

	.footer .footer_wx_icon:hover{

	}

	.footer .footer_sn_icon{
		float:left;
		width:55px;
		height:55px;

		background-color:#34353A;

		border-radius:55px;
		-webkit-border-radius:55px;
		-ms-border-radius:55px;
		-o-border-radius:55px;
		-moz-border-radius:55px;

		transition:300ms;
		-webkit-transition:300ms;
		-ms-transition:300ms;
		-o-transition:300ms;
		-moz-transition:300ms;
	}

	.footer .footer_sn_icon:hover{

		background-color:#F00;
	}

	.footer .footer_qq_icon{
		float:left;
		width:55px;
		height:55px;

		background-color:#34353A;

		border-radius:55px;
		-webkit-border-radius:55px;
		-ms-border-radius:55px;
		-o-border-radius:55px;
		-moz-border-radius:55px;

		transition:300ms;
		-webkit-transition:300ms;
		-ms-transition:300ms;
		-o-transition:300ms;
		-moz-transition:300ms;
	}

	.footer .footer_qq_icon:hover{

		background-color:#F00;
	}

	.footer .about_me h4{
		margin:10px 0px 0px 44px;
		color:#FFF;
		font-size:14px;
		font-weight:normal;
	}

	.footer .about_me .about_me_text{
		margin-top:20px;
		margin-left:44px;
		font-size:14px;
		color:#CCC;
	}

	.footer .contact_us{
		float:left;
		margin-top:50px;
		padding-left:57px;
		border-left:1px #606060 solid;
		height:150px;
		color:#CCC;
		font-size:14px;
	}

	.footer .contact_us_text1{
		margin-top:6px;
		font-size:28px;
		color:#FFF;
	}

	.footer .contact_us_text2{
		margin-top:5px;
		font-size:12px;
	}

	.footer .contact_us_text3 span{
		float:left;
		line-height:31px;
	}

	.footer .contact_us_text3{
		margin-top:18px;
		display:block;
		color:#CCC;
	}

	.footer .contact_us_text3 i{
		display:block;
		float:left;
		margin-left:10px;
		width:32px;
		height:30px;
		cursor:pointer;
		border:1px #CCC solid;

		border-radius:16px;
		-webkit-border-radius:16px;
		-ms-border-radius:16px;
		-o-border-radius:16px;
		-moz-border-radius:16px;

		transition:300ms;
		-webkit-transition:300ms;
		-ms-transition:300ms;
		-o-transition:300ms;
		-moz-transition:300ms;

	}

	.footer .contact_us_text3 i:hover{
		border:1px #DB0015 solid;
		background-color:#DB0015;
	}

	.footer .bottom .text{
		float:left;
		margin-top:34px;
		color:#999;
		font-size:14px;
	}

	.footer .bottom .g{
		float:right;
		margin-right:10px;
	}

	.footer .bottom .g a{
		float:left;
		margin-left:20px;
		margin-top:24px;
		width:100px;
		height:36px;
	}
</style>
<footer id="footer" class="footer" style="padding: 0px 0px 20px 0px;">
	<section class="main">
		<div class="about_me">
			<div class="wx">
				<a href="javascript:" class="footer_wx_icon"><img src="/Upload/public/<?php echo ($C['footer_logo']); ?>"></a>
			</div>
		</div>
		<div class="layout_center">
			<?php if(is_array($footerArticleType)): $i = 0; $__LIST__ = $footerArticleType;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="list"><label><?php echo ($vo['title']); ?></label>
					<ul>
						<?php if(is_array($footerArticle[$vo['name']])): $i = 0; $__LIST__ = $footerArticle[$vo['name']];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vvo): $mod = ($i % 2 );++$i;?><li><a href="<?php echo U('Article/type',array('id'=>$vvo['id']));?>" style="overflow: hidden;"><?php echo ($vvo['title']); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
						<li><a href="<?php echo U('Article/type',array('id'=>$vo['id']));?>" style="overflow: hidden;    text-align: left;">更多</a></li>
					</ul>
				</div><?php endforeach; endif; else: echo "" ;endif; ?>





			<div class="contact_us">
				<div class="contact_us_text0" style="text-align: left;">全国免费咨询电话 :</div>
				<div class="contact_us_text1" style="text-align: left;margin-top: 10px;margin-bottom: 12px;"><?php echo C('contact_moble');?></div>
				<div class="contact_us_text2" style="text-align: left;margin-bottom: 5px;">工作时间：周一至周日 8:00-23:00</div>
				<?php $_result=C('contact_qqun');if(is_array($_result)): $i = 0; $__LIST__ = $_result;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><a href="#" class="contact_us_text3"><span>会员群号 :<?php echo ($i); ?>群：<?php echo ($v); ?></span></a><?php endforeach; endif; else: echo "" ;endif; ?>
			</div>
		</div>
	</section>
</footer>
<div class="footer_bottom">
	<div class="autobox" style="height: 40px;margin-top: 5px;">
		<span style="display: inline-block;color:#A6A9AB;">CopyRight© 2013-2016 <?php echo ($C['web_name']); ?>交易平台 All Rights Reserved &nbsp;&nbsp;|&nbsp;&nbsp;<a href="http://www.miitbeian.gov.cn/publish/query/indexFirst.action" target="_blank"><?php echo ($C['web_icp']); ?></a><span style="display: inline-block; color:#A6A9AB"></span></span>
		<span style="float: right;">
			<a href="http://www.gov.cn/" target="_blank" class="margin10" style="margin-left:5px;"> <img src="/Upload/footer/footer_1.png">
			</a>
			<a href="http://www.szfw.org/" target="_blank" class="margin10" style="margin-left:5px;"> <img src="/Upload/footer/footer_2.png">
			</a>
			<a href="http://www.miibeian.gov.cn/" target="_blank" class="margin10" style="margin-left:5px;"><img src="/Upload/footer/footer_3.png">
			</a>
			<a href="http://www.cyberpolice.cn/" target="_blank" class="margin10" style="margin-left:5px;"><img src="/Upload/footer/footer_4.png">
			</a>
		</span>
	</div>
	<!-- 原安全验证位置 -->
</div>

<link rel="stylesheet" href="/Application/Home/View/Kefu/c/css/lrtk.css"/></head>

<!-- 代码 开始 -->
<div id="leftsead">
	<ul>



		<?php $_result=C('contact_qq');if(is_array($_result)): $i = 0; $__LIST__ = $_result;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><li>
			<a href="http://wpa.qq.com/msgrd?v=3&amp;uin=<?php echo ($v); ?>&amp;site=qq&amp;menu=yes" target="_blank">
				<div class="hides" style="width:161px;display:none;" id="qq">
					<div class="hides" id="p1">
						<img src="/Application/Home/View/Kefu/c/images/ll04.png">
					</div>
					<div class="hides" id="p2"><span style="color:#FFF;font-size:13px"><?php echo ($v); ?></span>
					</div>
				</div>
				<img src="/Application/Home/View/Kefu/c/images/l04.png" width="47" height="49" class="shows"/> </a>
		</li><?php endforeach; endif; else: echo "" ;endif; ?>




		<?php $_result=C('contact_qqun');if(is_array($_result)): $i = 0; $__LIST__ = $_result;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><li>
			<a href="javascript:void(0)" target="_blank">
				<div class="hides" style="width:161px;display:none;" id="qq">
					<div class="hides" id="p1">
						<img src="/Application/Home/View/Kefu/c/images/ll03.png">
					</div>
					<div class="hides" id="p4"><span style="color:#FFF;font-size:13px"><?php echo ($v); ?></span>
					</div>
				</div>
				<img src="/Application/Home/View/Kefu/c/images/l03.png" width="47" height="49" class="shows"/> </a>
		</li><?php endforeach; endif; else: echo "" ;endif; ?>


		<?php if(!empty($C['contact_moble'])): ?><li id="tel">
			<a href="javascript:void(0)">
				<div class="hides" style="width:161px;display:none;" id="tels">
					<div class="hides" id="p1">
						<img src="/Application/Home/View/Kefu/c/images/ll05.png">
					</div>
					<div class="hides" id="p3"><span style="color:#FFF;font-size:12px"><?php echo C('contact_moble');?></span>
					</div>
				</div>
				<img src="/Application/Home/View/Kefu/c/images/l05.png" width="47" height="49" class="shows"/> </a>
		</li><?php endif; ?>



		<li id="btn">
			<a id="top_btn">
				<div class="hides" style="width:161px;display:none">
					<img src="/Application/Home/View/Kefu/c/images/ll06.png" width="161" height="49"/>
				</div>
				<img src="/Application/Home/View/Kefu/c/images/l06.png" width="47" height="49" class="shows"/> </a>
		</li>
	</ul>
</div>
<script>
	$(document).ready(function () {

		$("#leftsead a").hover(function () {
			if ($(this).prop("className") == "youhui") {
				$(this).children("img.hides").show();
			} else {
				$(this).children("div.hides").show();
				$(this).children("img.shows").hide();
				$(this).children("div.hides").animate({marginRight: '0px'}, '0');
			}
		}, function () {
			if ($(this).prop("className") == "youhui") {
				$(this).children("img.hides").hide();
			} else {
				$(this).children("div.hides").animate({marginRight: '-163px'}, 0, function () {
					$(this).hide();
					$(this).next("img.shows").show();
				});
			}
		});

		$("#top_btn").click(function () {
			if (scroll == "off") return;
			$("html,body").animate({scrollTop: 0}, 600);
		});


	});
</script>
<!-- 代码 结束 -->
<div id="all_mask" class="all_mask" style="height: 0px; display: none;"></div>
<div class="all_mask_loginbox" style="top: 313px; display: none;">
	<div class="login_title pl20">登录</div>
	<form id="form-login" class="mask_wrap login-fb">
		<div class="login_text zin90">
			<div class="mask_wrap_title">账号：</div>
			<input id="login_username" name="username" type="text" placeholder="请输入手机号/会员名">
		</div>
		<div class="login_text zin80">
			<div class="mask_wrap_title">密码：</div>
			<input id="login_password" name="password" type="password" placeholder="请输入登录密码">
		</div>
		<?php if(($C['login_verify']) == "1"): ?><div class="login_text zin70" id="ga-box-i">
				<img id="codeImg reloadverifyindex" src="<?php echo U('Verify/code');?>" width="120" height="38" onclick="this.src=this.src+'?t='+Math.random()" style="margin-top: 1px; cursor: pointer;" title="换一张">
				<input type="text" class="code" id="login_verify" name="code" placeholder="请输入验证码" style="width: 106px; float: left;">
			</div><?php endif; ?>
		<div class="login_button">
			<input type="button" value="登录" onclick="upLogin();">
		</div>
		<div class="login-footer wwxwwx" style="border-bottom-left-radius: 3px; border-bottom-right-radius: 3px;">
			<!--<a target="_blank" href="/"><img src="/Public/Home/images/qq2.png" style="vertical-align: text-bottom; padding-right: 5px;">zzQQ登录</a>-->

			<span style="color: #CCC; float: right; margin-right: 25px;">
			<a style="font-size: 12px;" href="<?php echo U('Login/register');?>">免费注册</a>｜<a href="<?php echo U('Login/findpwd');?>" style="font-size: 12px;">忘记密码</a></span>
		</div>
	</form>
	<div class="mask_wrap_close" onclick="wrapClose()"></div>
</div>
<script type="text/javascript" src="/Public/Home/js/jquery.cookies.2.2.0.js"></script>
<script>
	$('input').focus(function () {
		var t = $(this);
		if (t.attr('type') == 'text' || t.attr('type') == 'password')
			t.css({'box-shadow': '0px 0px 3px #1583fb', 'border': '1px solid #1583fb'});
		if (t.val() == t.attr('placeholder'))
			t.val('');
	});
	$('input').blur(function () {
		var t = $(this);
		if (t.attr('type') == 'text' || t.attr('type') == 'password')
			t.css({'box-shadow': 'none', 'border': '1px solid #e1e1e1'});
		if (t.attr('type') != 'password' && !t.val())
			t.val(t.attr('placeholder'));
	});


	function NumToStr(num) {
		if (!num) return num;
		num = Math.round(num * 100000000) / 100000000;
		num = num.toFixed(8);
		var min = 0.0001;
		var times = 0;
		var arr;
		if (num <= min) {
			times = 0;
			while (num <= min) {
				num *= 10;
				times++;
				if (times > 100) break;
			}
			num = num + '';
			arr = num.split(".");
			for (var i = 0; i < times; i++) {
				arr['1'] = '0' + arr['1'];
			}
			return arr[0] + '.' + arr['1'] + '';
		}
		return num.toFixed(8) + ' ';
	}


	function loginpop() {
		$('.all_mask').css({'height': $(document).height()});
		$('.all_mask').show();
		$('.all_mask_loginbox').show();
		$(".reloadverify").click();
		$('body,html').animate({scrollTop: 0},1500);
	}

	var is_login = <?php echo (session('userId')); ?>
	;

	if (window.location.hash == '#login') {
		if (!is_login) {
			loginpop();
		}
	}

	if (is_login) {
		$.getJSON("/Ajax/allfinance?t=" + Math.random(), function (data) {

			$('#user_finance').html(data);
		});
	}


	function wrapClose() {
		$('.all_mask').hide();
		$('.all_mask_loginbox').hide();
	}

	var cookieValue = $.cookies.get('cookie_username');
	if (cookieValue != '' && cookieValue != null) {
		$("#login_username").val(cookieValue);
	}

	function upLogin() {
		var username = $("#login_username").val();
		var password = $("#login_password").val();
		var verify = $("#login_verify").val();
		if (username == "" || username == null) {
			layer.tips('请输入用户名', '#login_username', {tips: 3});
			return false;
		}
		if (password == "" || password == null) {
			layer.tips('请输入登录密码', '#login_password', {tips: 3});
			return false;
		}

		$.post("<?php echo U('Login/submit');?>", {
			username: username,
			password: password,
			verify: verify,
		}, function (data) {
			if (data.status == 1) {
				$.cookies.set('cookie_username', username);
				layer.msg(data.info, {icon: 1});
				window.location = '/Finance';
			} else {
				//刷新验证码
				$(".reloadverifyindex").click();
				layer.msg(data.info, {icon: 2});
				if (data.url) {
					window.location = data.url;
				}
			}
		}, "json");
	}


    var allverfiy = function() {
        if ($('#login_username').val() == '' || $('#login_username').val().length == 0) {
            layer.tips('请输入用户名', '#login_username', {tips: 3});
            return;
        }
        if ($('#login_password').val() == '' || $('#login_password').val().length == 0) {
            layer.tips('请输入登录密码', '#login_password', {tips: 3});
            return;
        }
        if ($('#login_verify').val() == '' || $('#login_verify').val().length == 0) {
            layer.tips('图形验证码不能为空!', '#login_verify', {tips: 3});
            return;
        }
        return true;
    }
    var allloginClick = function() {
        var e = event || window.event || arguments.callee.caller.arguments[0];
        if (e && e.keyCode == 13) { // enter 键
            if (!allverfiy()) {
                return;
            }
            upLogin();
        }
    }
    $('#login_username').bind('keydown', allloginClick);
    $('#login_password').bind('keydown', allloginClick);
    $('#login_verify').bind('keydown', allloginClick);
</script></body></html>