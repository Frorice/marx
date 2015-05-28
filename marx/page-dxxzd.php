<?php
/*
Template Name: 大学生指导
*/
?>
<?php get_header(); ?>
	<div class="pageContent">
		<div class="index">
			<h4 class="title">大学生指导</h4>           
			<ul>
				<li><a href="<?php bloginfo('wpurl');?>/hszt">湖南商学院大学生中国特色社会主义理论体系研究协会</a></li>
				<li><a href="<?php bloginfo('wpurl');?>/pphd">品牌活动</a></li>
				<li><a href="<?php bloginfo('wpurl');?>/cgyx">成果影响</a></li>
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