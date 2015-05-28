<?php get_header();?>
        <!--Post -->
        <div class="post">
            <!-- Post Title -->
			<h3 class="title"><a href="<?php the_permalink(); ?>" rel="bookmark"><?php the_title(); ?></a></h3>           
			<!-- Post Data -->
            <p class="sub">
				<?php the_tags('标签：', ', ', ''); ?>
				<?php the_time('y-m-d H:i:s') ?> 
            	<?php edit_post_link('编辑', ' ', ''); ?> 
            </p>
            <!-- Post Content -->
            <pre class="content"><?php echo $post->post_content;?></pre>
                
        </div>
<?php get_footer();?>