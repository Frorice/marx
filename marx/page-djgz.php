<?php
/*
Template Name: 党建工作
*/
?>
<?php get_header(); ?>
	<div class="pageContent">
		<div class="index">
			<h4 class="title">党建工作</h4>           
			<ul>
				<li><a href="<?php bloginfo('wpurl');?>/dzz">组织建设</a></li>
				<li><a href="<?php bloginfo('wpurl');?>/hdkz">活动开展</a></li>
				<li><a href="<?php bloginfo('wpurl');?>/ddzs">党的知识</a></li>
				<li><a href="<?php bloginfo('wpurl');?>/xxzl">学习专栏</a></li>
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