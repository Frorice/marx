<?php
/*
Template Name: 机构设置
*/
?>
<?php get_header(); ?>
	<div class="pageContent">
		<div class="index">
			<h4 class="title">机构设置</h4>           
			<ul>
				<li><a href="<?php bloginfo('wpurl');?>/jigou/leader">领导班子</a></li>
				<li><a href="<?php bloginfo('wpurl');?>/office/xinz">办公室</a></li>
				<li><a href="<?php bloginfo('wpurl');?>/edu/yan1">教研室</a></li>
				<li><a href="<?php bloginfo('wpurl');?>/cs">中国特色社会主义理论研究中心</a></li>
			</ul>
		</div>
		<!--  Postlist -->
        <div class="postlist">
        	<!--post title-->
        	<h4 class="title"><?php the_title(); ?></h4>           
			<!-- Post Data -->
			<pre class="content"><?php echo $post->post_content;?></pre>
        </div>
    </div>
<?php get_footer(); ?>