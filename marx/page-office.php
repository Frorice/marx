<?php
/*
Template Name: 办公室
*/
?>
<?php get_header(); ?>
	<div class="pageContent">
		<div class="index">
			<h4 class="title">办公室</h4>           
			<ul>
				<li><a href="<?php bloginfo('wpurl');?>/xinz">行政办公室</a></li>
				<li><a href=" <?php bloginfo('wpurl');?>/jiaowu">教务办公室</a></li>
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