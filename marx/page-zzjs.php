<?php
/*
Template Name: 组织建设
*/
?>
<?php get_header(); ?>
	<div class="pageContent">
		<div class="index">
			<h4 class="title">组织建设</h4>           
			<ul>
				<li><a href="<?php bloginfo('wpurl');?>/dzz">党总支</a></li>
				<li><a href=" <?php bloginfo('wpurl');?>/dzb">党支部</a></li>
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