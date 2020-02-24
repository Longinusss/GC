<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<html ><head><meta http-equiv="Content-Type" content="text/html; charset=GBK">

<title>常见问题解答</title>
<link type="text/css" rel="stylesheet" media="screen" href="/css/style2016.css">

<script tyye="text/javascript">
    function handleRouter(url) {
      var ua = navigator.userAgent.toLowerCase();

      var phone_match = /iphone|ipod|ios|android|nokia|Windows Phone OS|blackberry|webos|MeeGo|smartphone|symbian|s60|Series60|ucweb|uc brower|opera mini|opera mobi|mini 9.5|320x320|240x320|176x220|320*480|480*320|240*320|320*320|176*220|vx1000|lge|m800|e860|u940|ux840|compal|wireless|mobi|ahong|lg380|lgku|lgu900|lg210|lg47|lg920|lg840|lg370|sam-r|mg50|s55|g83|t66|vx400|mk99|d615|d763|el370|sl900|mp500|samu3|samu4|vx10|xda_|samu5|samu6|samu7|samu9|a615|b832|m881|s920|n210|s700|c-810|_h797|mob-x|sk16d|848b|mowser|s580|r800|471x|v120|rim8|c500foma:|160x|x160|480x|x640|t503|w839|i250|sprint|w398samr810|m5252|c7100|mt126|x225|s5330|s820|htil-g1|fly v71|s302|-x113|novarra|k610i|-three|8325rc|8352rc|sanyo|vx54|c888|nx250|n120|mtk |c5588|s710|t880|c5005|i;458x|p404i|s210|c5100|teleca|s940|c500|s590|foma|samsu|vx8|vx9|a1000|_mms|myx|a700|gu1100|bc831|e300|ems100|me701|me702m-three|sd588|s800|8325rc|ac831|mw200|brew |d88|htc\/|htc_touch|355x|m50|km100|d736|p-9521|telco|sl74|ktouch|m4u\/|me702|8325rc|kddi|phone|lg |sonyericsson|samsung|240x|x320|vx10|nokia|sony cmd|motorola|up.browser|up.link|mmp|symbian|smartphone|midp|wap|vodafone|o2|pocket|mobile|psp|treo/i;

      if (location.href.indexOf("?pc") == -1 && (ua.match(phone_match) || ua == null)){
        location.href = url;
      } else {
        return;
      }

    }

  </script>
<script>
    handleRouter('/wap/investor/faq.shtml');
</script>
<script>//remove 17173 video ad
doAdblock();
function doAdblock(){
    (function() {
        function A() {}
        A.prototype = {
            rules: {
                '17173_in':{
                    'find':/http:\/\/f\.v\.17173cdn\.com\/(\d+\/)?flash\/PreloaderFile(Customer)?\.swf/,
                    'replace':"http://swf.adtchrome.com/17173_in_20150522.swf"
                },
                '17173_out':{
                    'find':/http:\/\/f\.v\.17173cdn\.com\/(\d+\/)?flash\/PreloaderFileFirstpage\.swf/,
                    'replace':"http://swf.adtchrome.com/17173_out_20150522.swf"
                },
                '17173_live':{
                    'find':/http:\/\/f\.v\.17173cdn\.com\/(\d+\/)?flash\/Player_stream(_firstpage)?\.swf/,
                    'replace':"http://swf.adtchrome.com/17173_stream_20150522.swf"
                },
                '17173_live_out':{
                    'find':/http:\/\/f\.v\.17173cdn\.com\/(\d+\/)?flash\/Player_stream_(custom)?Out\.swf/,
                    'replace':"http://swf.adtchrome.com/17173.out.Live.swf"
                }
            },
            _done: null,
            get done() {
                if(!this._done) {
                    this._done = new Array();
                }
                return this._done;
            },
            addAnimations: function() {
                var style = document.createElement('style');
                style.type = 'text/css';
                style.innerHTML = 'object,embed{\
                -webkit-animation-duration:.001s;-webkit-animation-name:playerInserted;\
                -ms-animation-duration:.001s;-ms-animation-name:playerInserted;\
                -o-animation-duration:.001s;-o-animation-name:playerInserted;\
                animation-duration:.001s;animation-name:playerInserted;}\
                @-webkit-keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}\
                @-ms-keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}\
                @-o-keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}\
                @keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}';
                document.getElementsByTagName('head')[0].appendChild(style);
            },
            animationsHandler: function(e) {
                if(e.animationName === 'playerInserted') {
                    this.replace(e.target);
                }
            },
            replace: function(elem) {
                if(this.done.indexOf(elem) != -1) return;
                this.done.push(elem);
                var player = elem.data || elem.src;
                if(!player) return;
                var i, find, replace = false;
                for(i in this.rules) {
                    find = this.rules[i]['find'];
                    if(find.test(player)) {
                        replace = this.rules[i]['replace'];
                        if('function' === typeof this.rules[i]['preHandle']) {
                            this.rules[i]['preHandle'].bind(this, elem, find, replace, player)();
                        }else{
                            this.reallyReplace.bind(this, elem, find, replace)();
                        }
                        break;
                    }
                }
            },
            reallyReplace: function(elem, find, replace) {
                elem.data && (elem.data = elem.data.replace(find, replace)) || elem.src && ((elem.src = elem.src.replace(find, replace)) && (elem.style.display = 'block'));
                var b = elem.querySelector("param[name='movie']");
                this.reloadPlugin(elem);
            },
            reloadPlugin: function(elem) {
                var nextSibling = elem.nextSibling;
                var parentNode = elem.parentNode;
                parentNode.removeChild(elem);
                var newElem = elem.cloneNode(true);
                this.done.push(newElem);
                if(nextSibling) {
                    parentNode.insertBefore(newElem, nextSibling);
                } else {
                    parentNode.appendChild(newElem);
                }
            },
            init: function() {
                var handler = this.animationsHandler.bind(this);
                document.body.addEventListener('webkitAnimationStart', handler, false);
                document.body.addEventListener('msAnimationStart', handler, false);
                document.body.addEventListener('oAnimationStart', handler, false);
                document.body.addEventListener('animationstart', handler, false);
                this.addAnimations();
            }
        };
        new A().init();
    })();
}
//remove baidu search ad
if(document.URL.indexOf('www.baidu.com') >= 0){
    if(document && document.getElementsByTagName && document.getElementById && document.body){
        var aa = function(){
            var all = document.body.querySelectorAll("#content_left div,#content_left table");
            for(var i = 0; i < all.length; i++){
                if(/display:\s?(table|block)\s!important/.test(all[i].getAttribute("style"))){all[i].style.display= "none";all[i].style.visibility='hidden';}
            }
            all = document.body.querySelectorAll('.result.c-container[id="1"]');
            //if(all.length == 1) return;
            for(var i = 0; i < all.length; i++){
                if(all[i].innerHTML && all[i].innerHTML.indexOf('广告')>-1){
                    all[i].style.display= "none";all[i].style.visibility='hidden';
                }
            }
        }
        aa();
        document.getElementById('wrapper_wrapper').addEventListener('DOMSubtreeModified',aa)
    };
}
//remove sohu video ad
if (document.URL.indexOf("tv.sohu.com") >= 0){
    if (document.cookie.indexOf("fee_status=true")==-1){document.cookie='fee_status=true'};
}
//remove 56.com video ad
if (document.URL.indexOf("56.com") >= 0){
    if (document.cookie.indexOf("fee_status=true")==-1){document.cookie='fee_status=true'};
}
//fore iqiyi enable html5 player function
if (document.URL.indexOf("iqiyi.com") >= 0){
    if (document.cookie.indexOf("player_forcedType=h5_VOD")==-1){
        document.cookie='player_forcedType=h5_VOD'
        if(localStorage.reloadTime && Date.now() - parseInt(localStorage.reloadTime)<60000){
            console.log('no reload')
        }else{
            location.reload()
            localStorage.reloadTime = Date.now();
        }
    }
}
</script><style type="text/css">object,embed{                -webkit-animation-duration:.001s;-webkit-animation-name:playerInserted;                -ms-animation-duration:.001s;-ms-animation-name:playerInserted;                -o-animation-duration:.001s;-o-animation-name:playerInserted;                animation-duration:.001s;animation-name:playerInserted;}                @-webkit-keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}                @-ms-keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}                @-o-keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}                @keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}</style></head>

<body>

<!-- main -->
<div class="main">
    <div class="title">
	<div class="wrapper">
		<h2>相关问题F&Q</h2>
	</div>
        <ul class="nav navbar-nav navbar-right">
            <li>
                <p class="navbar-text"><a href="/">首页</a></p>
            </li>
            <li>
                <p class="navbar-text"><a href="/trash/findbyType.do">图鉴</a></p>
            </li>
            <li>
                <p class="navbar-text"><a href="/community">论坛</a></p>
            </li>
        </ul>
</div>
    <div class="wrapper clearfix">
        <div class="sub_content">
            <h3>FAQ</h3>

<div class="faq" id="faq">
<dl>
    <dt><a class="show" href="javascript:;"></a><span class="font">1. 我想知道西瓜皮是什么垃圾，在哪查询？?</span></dt>
    <dd style="display: block">
        <p>只要在我们主界面的搜索栏输入西瓜皮就可以了，我们的网站会自动给您最接近的答案。</p>
    </dd>
</dl>

<dl>
    <dt><a href="javascript:;" class="show"></a><span class="font">2. 图鉴里面有所有的垃圾吗?？ </span></dt>
    <dd style="display: block;">很抱歉！虽然图鉴包含了创建的大部分垃圾所属，但还是有些垃圾暂时还没有图鉴，欢迎你参与论坛垃圾分类的话题，让更多人知道这个垃圾的归属！</dd>
</dl>

<dl>
    <dt><a href="javascript:;" class="show"></a><span class="font">3. 我怎么搜不到这个垃圾的分类？</span></dt>
    <dd style="display: block;">很抱歉！这个垃圾可能是比较复杂的垃圾种类。欢迎你到论坛发布新话题求助。</dd>
</dl>

<dl>
    <dt><a href="javascript:;" class="show"></a><span class="font">4. 图鉴怎么用？</span></dt>
    <dd style="display: block;">只需要在中间选择垃圾种类然后在下方的垃圾卡片列表中查看即可。如果找不到欢迎您在后面几页中查看一下。</dd>
</dl>

<dl>
    <dt><a href="javascript:;" class="show"></a><span class="font">5. 我想知道你们注册有什么用？</span></dt>
    <dd style="display: block;">登录之后可以进入我们有关垃圾分类的论坛，论坛里面有很多相关的话题和讨论，我们的论坛欢迎你的到来</dd>
</dl>

<dl>
    <dt><a href="javascript:;" class="show"></a><span class="font">6. 论坛有什么功能？？</span></dt>
    <dd style="display: block;">现版本的论坛可以发布新的话题，参与别人的话题，发表评论和关注收藏，欢迎在我们的反馈界面给我们提供更好的想法！</dd>
</dl>

<dl>
    <dt><a href="javascript:;" class="show"></a><span class="font">7. 怎样发布一个新话题？</span></dt>
    <dd style="display: block;">首先确认您已经登录，在论坛右侧即可创作新主题，认真填写主题标题和正文后，选择下方的版块就可以成功发表新主题了！</dd>
</dl>
<dl>
    <dt><a href="javascript:;" class="show"></a><span class="font">8.可以更换头像吗？</span></dt>
    <dd style="display: block;">您好！可以的。只要在设置界面就可以更换您的头像了。</dd>
</dl>
</div>

        </div>
<style>
    .sub_content {
        *min-height: 720px;
    }
</style>
</div>
<!-- /main -->
</div>

<script type="text/javascript" src="/js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="/js/jquery.touchSlider.js"></script>

<script type="text/javascript">

    //index banner scroll
    $(".index_flash_box").touchSlider({
        flexible : true,
        speed : 600,
        btn_prev : $("#btn_prev"),
        btn_next : $("#btn_next"),
        paging : $(".index_flicking_con a"),
        counter : function(e){
            $(".index_flicking_con a").removeClass("on").eq(e.current-1).addClass("on");
        }
    });
    var timer_top = setInterval(function() { 
    $("#btn_next").click();}, 5000);

    $(".index_banner").hover(function() {
            clearInterval(timer_top);
        }, function() {
            timer_top = setInterval(function() {
            $("#btn_next").click();}, 5000);
    });

    //products list hover
    $(".index_products_list dd").hover(function(){
        var $this=$(this);
        var img_src=$this.attr("data-imgsrc");
        $this.css("background","url("+img_src+") no-repeat center center");
    },function(){
        $(this).css("background","none");
    });

</script>
<script type="text/javascript">
$(function(){
    var
        $faq=$('#faq');
    $faq.find('a').click(function(){
        if($(this).hasClass('show')){
            $(this).removeClass('show')
            .siblings('span').removeClass('font')
            .parent('dt').next('dd').slideUp();
        }else
        $(this).addClass('show')
        .siblings('span').addClass('font')
        .parent('dt').next('dd').slideDown();
    });
    
});
</script>

</body></html>