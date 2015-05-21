<?php
/*
Template Name: 科学研究
*/
?>
<?php get_header(); ?>
	<div class="pageContent">
		<div class="index">
			<h4 class="title">科学研究</h4>           
			<ul>
				<li><a href="<?php bloginfo('wpurl');?>/xktd">学科团队</a></li>
				<li><a href="<?php bloginfo('wpurl');?>/kt">课题研究</a></li>
				<li><a href="<?php bloginfo('wpurl');?>/lw">论文著作</a></li>
				<li><a href="<?php bloginfo('wpurl');?>/cg">成果获奖</a></li>
				<li><a href="<?php bloginfo('wpurl');?>/jl">交流合作</a></li>
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