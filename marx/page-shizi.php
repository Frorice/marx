<?php
/*
Template Name: 师资队伍
*/
?>
<?php get_header(); ?>
	<div class="pageContent">
		<div class="index">
			<h4 class="title">师资队伍</h4>           
			<ul>
				<li><a href="<?php bloginfo('wpurl');?>/zrjs">专任教师概况</a></li>
				<li><a href="<?php bloginfo('wpurl');?>/js">教授</a></li>
				<li><a href="<?php bloginfo('wpurl');?>/fjs">副教授/博士</a></li>
				<li><a href="<?php bloginfo('wpurl');?>/msh">名师风采</a></li>
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