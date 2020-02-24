<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<html lang="zxx">
<head>
<meta charset="utf-8">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Title -->
<title>Home</title>

<!-- Favicon -->
<link rel="icon" href="favicon.ico" type="img/x-icon" />

<!-- Include CSS -->
<link rel="stylesheet" type="text/css" href="/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="/css/font-awesome.min2.css">
<link rel="stylesheet" type="text/css" href="/owl-carousel/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="/owl-carousel/owl.theme.css">
<link rel="stylesheet" type="text/css" href="/owl-carousel/owl.transitions.css">
<link rel="stylesheet" type="text/css" href="/css/style2.css">
<script type="text/javascript" src="/js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript">
        document.onkeydown=function (event) {
            e = event ? event:(window.event ? window.event:null);
            if(e.keyCode==13){
                $("#search-btn").trigger("click");//触发搜索按钮的点击事件
                return false;
            }
        }

        function searchRubbishType() {
			var rubbishType = ["#","湿垃圾","干垃圾","可回收物","有害垃圾"];
			$.ajax({
				type:"post",
				url:"${pageContext.request.contextPath}/trash/searchRubbish.do",
                data: {name: $("#search-info").val()},
				success:function (data) {
                    $("#myModalLabel").text('有关“'+$("#search-info").val()+'”的垃圾分类');
					if(jQuery.isEmptyObject(data.rubbishInfos)){
						$("#rubbishTypeBox").html('<div class="modal-body" id="rubbishTypeBox"><p>抱歉我们没能找到你需要的信息&hellip;</p></div>');
						$("#rubbishTypeModal").modal('show');
					}else{
                        $("#rubbishTypeBox").html('<div class="modal-body" id="rubbishTypeBox"><div class="table-responsive"><table class="table table-hover"><thead><tr><th>名称</th><th>类别</tr></thead><tbody id="rubbishTypeTable"></tbody></table></div></div>');
						var item;
						for(i in data.rubbishInfos){
							item = '<tr>'+'<td style="text-align: left">'+data.rubbishInfos[i].trashName+'</td>'+'<td style="text-align: left">'+rubbishType[data.rubbishInfos[i].type]+'</td>'+'</tr>';
							$("#rubbishTypeTable").append(item);
						}
						$("#rubbishTypeModal").modal('show');
					}
				},
				error:function () {
					alert("获取垃圾分类信息失败")
				}
			})
		}

		function getHotTopic() {
			$.ajax({
				type:"get",
				url:"${pageContext.request.contextPath}/topic/getHotTopic.do?size=5",
				success:function (data) {
					// console.log(data);
					for(i in data.hotTopics){
						var item;
						item = '<a class="list-group-item" href="/t/'+data.hotTopics[i].id+'">'
						    +'<span class="badge badge-danger">'+data.hotTopics[i].click+'阅读'+'</span>'
						    +'<h4 class="list-group-item-heading">' + data.hotTopics[i].title +'</h4>'+'</a>';
						$("#topicBox").append(item)
					}
				},
				error:function () {
					alert("获取热点信息失败")
				}
			})
		}
	</script>
</head>

<body onload="getHotTopic()">


<!-- Loader -->
<div id="loader" class="loader">
	<div class="loader-content">
		<img src="img/loader.png" alt="Loading...">
	</div>
</div>

<!-- Header container -->
<div class="header-bg">
	<!-- Container -->
	<div class="container">

		<div class="row flex">
			<!-- Logo column -->
			<div class="col-xs-12 col-sm-5 col-md-4 flex">
				<a href="index.jsp">
					<!-- Logo -->
					<img src="img/logo.png" class="logo img-responsive" alt="PhotoMarket">
				</a>
			</div>

			<!-- Menu column -->
<%--			<div class="col-xs-12 col-sm-7 col-md-8 flex flex-center">
				<!-- Menu -->
				<ul class="nav nav-pills">
					<li role="presentation"><a href="#">注销</a></li>
					<li role="presentation"><a href="pages/account.jsp">您的账户</a></li>
					<li role="presentation"><a href="login.jsp"><b>欢迎，</b> <span>请登录</span></a></li>
				</ul>

			</div>--%>
		</div>

	</div>
</div>

<!-- Navbar menu -->
<nav class="navbar navbar-default nav-top">
	<div class="container-fluid">
		<!-- Responsive button -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
		</div>

		<!-- Menu -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="/index.jsp">首页</a></li>
				<li><a href="/community">社区</a></li>
				<li><a href="/trash/findbyType.do">图鉴</a></li>
				<li><a href="/pages/faq.jsp">FAQ</a></li>
			</ul>

		</div>
	</div>
</nav>

<!-- Principal image with search -->
<div class="full-header">
	<div class="overlay"></div>
	<div class="search">
		<form>
			<input id="search-info" type="text" placeholder="Search..." class="principal-search">
			<button id="search-btn" type="button" class="principal-search-btn" data-target="#rubbishTypeModal" onclick="searchRubbishType()"><i class="fa fa-search" aria-hidden="true"></i></button>
		</form>
	</div>
	<!-- 模态框（Modal） -->
	<div class="modal fade" id="rubbishTypeModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">有关“西瓜皮”的垃圾分类</h4>
				</div>
				<div class="modal-body" id="rubbishTypeBox">
					<div class="table-responsive">
						<table class="table table-hover">
							<thead>
							<tr>
								<th>名称</th>
								<th>类别</th>
							</tr>
							</thead>
							<tbody id="rubbishTypeTable">
<%--							<tr>--%>
<%--								<td style="text-align: left">西瓜籽</td>--%>
<%--								<td style="text-align: left">湿垃圾</td></tr>--%>
<%--							<tr>--%>
<%--								<td style="text-align: left">西瓜皮</td>--%>
<%--								<td style="text-align: left">湿垃圾</td></tr>--%>
							</tbody>
						</table>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal -->
	</div>
	<div class="bottom-text">
		垃圾回家, 需要你的帮助!
	</div>
</div>

<!-- Page container -->
<div class="inner-content-home">
	<div class="container">

		<div class="row margin-bottom-20">

			<!-- Top categories -->
			<div class="col-sm-8">
				<h4 class="title">知识贴士</h4>
				<div class="line-dec"></div>

				<!-- Top categories slider -->
				<div id="carousel-example-generic" class="carousel slide" data-ride="carousel" data-interval="2000">

					<!-- 轮播指标 -->
					<ol class="carousel-indicators">
						<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
						<li data-target="#carousel-example-generic" data-slide-to="1"></li>
						<li data-target="#carousel-example-generic" data-slide-to="2"></li>
						<li data-target="#carousel-example-generic" data-slide-to="3"></li>
					</ol>

					<!-- 轮播项目 -->
					<div class="carousel-inner" role="listbox">

						<!-- Top categories (item) -->
						<div class="item active">
							<a href="#">
								<img src="img/slider/1.jpg" alt="可回收垃圾">
							</a>
						</div>

						<!-- Top categories (item) -->
						<div class="item">
							<a href="#">
								<img src="img/slider/2.jpg" alt="有害垃圾">
							</a>
						</div>

						<!-- Top categories (item) -->
						<div class="item">
							<a href="#">
								<img src="img/slider/3.jpg" alt="干垃圾">
							</a>
						</div>

						<!-- Top categories (item) -->
						<div class="item">
							<a href="#">
								<img src="img/slider/4.jpg" alt="湿垃圾">
							</a>
						</div>
					</div>

					<!-- 轮播导航 -->
					<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
						<span class="glyphicon glyphicon-chevron-left fa fa-angle-left" aria-hidden="true"></span>
					</a>
					<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
						<span class="glyphicon glyphicon-chevron-right fa fa-angle-right" aria-hidden="true"></span>
					</a>
				</div>
			</div>

			<!-- Tip of the day column -->
			<div class="col-sm-4">
				<h4 class="title">热门话题</h4>
				<div class="line-dec"></div>
				<div class="list-group" id="topicBox">
<%--					<a class="list-group-item" href="#">
						<span class="badge badge-danger">20万热度</span>
						<h4 class="list-group-item-heading">
							我该如何给旧手机进行垃圾分类
						</h4>
					</a>
					<a class="list-group-item" href="#">
						<span class="badge badge-danger">10万热度</span>
						<h4 class="list-group-item-heading">
							求教大佬小龙虾属于什么垃圾
						</h4>
					</a>
					<a class="list-group-item" href="#">
						<span class="badge badge-danger">5000热度</span>
						<h4 class="list-group-item-heading">
							推荐一款多功能家庭垃圾桶
						</h4>
					</a>--%>
				</div>


			</div>
		</div>
	</div>
</div>

<!-- 页脚信息 -->
<div class="container">
	<div id="footer">
		<div class="row">
			<!-- Information column -->
			<div class="col-sm-4">
				<h4 class="footer-title">相关链接</h4>
				<div class="line-dec"></div>
				<ul>
					<li><a href="http://www.ljflw.cn/">中国垃圾分类网</a></li>
					<li><a href="http://huanbao.bjx.com.cn/">北极星环保网</a></li>
					<li><a href="http://www.lajifenlei.wang/">垃圾分类网</a></li>
				</ul>
			</div>

			<!-- Offers column -->
			<div class="col-sm-4">
				<h4 class="footer-title">我们的服务</h4>
				<div class="line-dec"></div>
				<ul>
					<li><a href="/index.jsp">垃圾检索</a></li>
					<li><a href="/community">社区讨论</a></li>
					<li><a href="/trash/findbyType.do">垃圾图鉴</a></li>
				</ul>
			</div>

			<!-- Account column -->
<%--
			<div class="col-sm-4">
				<h4 class="footer-title">您的账户</h4>
				<div class="line-dec"></div>
				<ul>
					<li><a href="pages/.jsp">个人信息</a></li>
					<li><a href="#">达人认证</a></li>
				</ul>
			</div>
--%>

			<!-- Copyright -->
			<p style="text-align:center">Copyright &copy; 2019.“垃圾回家”项目组保留所有解释权</p>
		</div>
	</div>
</div>

<!-- Include Scripts -->
<script type="text/javascript" src="/js/jquery-3.1.0.min.js"></script>
<script type="text/javascript" src="/js/bootstrap.min3.js"></script>
<script type="text/javascript" src="/owl-carousel/owl.carousel.min.js"></script>
<script type="text/javascript" src="/js/main2.js"></script>

</body>
</html>