<?php
/*
Template Name: 基地建设
*/
?>
<?php get_header(); ?>
	<div class="pageContent">
		<div class="index">
			<h4 class="title">基地建设</h4>           
			<ul>
				<li><a href="<?php bloginfo('wpurl');?>/zths">湖南省中国特色社会主义理论体系研究中心湖南商学院基地</a></li>
				<li><a href="<?php bloginfo('wpurl');?>/hnhp">湖南省和平文化研究基地</a></li>
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