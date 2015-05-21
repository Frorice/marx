<?php
/*
Template Name: 研究生政治理论课
*/
?>
<?php get_header(); ?>
	<div class="pageContent">
		<div class="index">
			<h4 class="title"><?php the_title(); ?></h4>           
			<ul>
				<li><a href="<?php bloginfo('wpurl');?>/zgts">中国特色社会理论与实践</a></li>
				<li><a href=" <?php bloginfo('wpurl');?>/mks">马克思主义与社会科学方法论</a></li>
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