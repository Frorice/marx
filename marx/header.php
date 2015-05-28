<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=0.5, maximum-scale=2.0, user-scalable=yes" />  
<title><?php if ( is_home() ) {
bloginfo('name');echo '-';bloginfo('description');
} elseif ( is_category() ) {
single_cat_title();echo '-';bloginfo('name');
} elseif (is_single() || is_page() ) {
single_post_title();
} elseif (is_search() ) {
echo "搜索结果";echo '-';bloginfo('name');
} elseif (is_404() ) {
echo '页面未找到!';
} else {
wp_title('',true);
} ?></title>
<!– Stylesheets –>
<link rel="stylesheet" href="<?php bloginfo('stylesheet_url');?>" type="text/css" media="screen" />
</head>
<?php flush(); ?>
<body>
	<div class="all-header">
		<div>
			<div class="top-link">欢迎来到  <a href="<?php bloginfo('wpurl');?>" style="text-decoration:none;color:red">马克思主义学院</a></div>
			<div class="top-actions">
			<a onclick="this.style.behavior='url(#default#homepage)';this.setHomePage(window.location);" href="#" style="text-decoration:none;color:black">设为首页</a>
			<a href="javascript:window.external.AddFavorite(window.location,document.title)" style="text-decoration:none;color:black">收藏本站</a> 
			<a href="<?php bloginfo('wpurl');?>/admin" style="text-decoration:none;color:black">登录</a>
			</div>
		</div>
		<div class="name">
			<img src="<?php bloginfo('stylesheet_url')?>/../Images/logo_slh.png">
			<font size="9" id="hs">湖南商学院</font>
			<font size="6">马克思主义学院</font><br/><br/>
			<font size="5" id="yx">仰望星空 坚守高地 切问近思 笃信力行</font>
		</div>
	</div>