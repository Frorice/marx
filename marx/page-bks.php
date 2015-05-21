<?php
/*
Template Name: 本科生政治理论课
*/
?>
<?php get_header(); ?>
	<div class="pageContent">
		<div class="index">
			<h4 class="title"><?php the_title(); ?></h4>           
			<ul>
				<li><a href="<?php bloginfo('wpurl');?>/mzdzg">毛泽东思想和中国特色社会主义理论体系概论</a></li>
				<li><a href=" <?php bloginfo('wpurl');?>/zgjxd">中国近现代史纲要</a></li>
				<li><a href="<?php bloginfo('wpurl');?>/mksjb">马克思主义基本原理</a></li>
				<li><a href=" <?php bloginfo('wpurl');?>/sxdd">思想道德修养与法律基础</a></li>
				<li><a href="<?php bloginfo('wpurl');?>/xszc">形势与政策</a></li>
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