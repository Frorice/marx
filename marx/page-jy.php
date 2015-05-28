<?php
/*
Template Name: 教研室
*/
?>
<?php get_header(); ?>
	<div class="pageContent">
		<div class="index">
			<h4 class="title">教研室</h4>           
			<ul>
				<li><a href="<?php bloginfo('wpurl');?>/yan1">马克思主义中国化教研室</a></li>
				<li><a href="<?php bloginfo('wpurl');?>/yan2">马克思主义基本原理教研室</a></li>
				<li><a href="<?php bloginfo('wpurl');?>/yan3">思想道德修养与法律基础教研室</a></li>
				<li><a href="<?php bloginfo('wpurl');?>/yan4">军事理论教研室</a></li>
				<li><a href="<?php bloginfo('wpurl');?>/yan5">美育教研室</a></li>
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