<?php  get_header();?>
	<div class="ibody">
		<div class="news">
			<p>学院动态</p>
			
			<div class="newsr">
				<?php query_posts('showposts=4&cat=-111'); ?>  
			    <ul id="marquee">  
			        <?php while (have_posts()) : the_post(); ?>  
			        <li class="newnews"><a href="<?php the_permalink() ?>"><?php the_title(); ?></a></li>  
			        <?php endwhile;?> 
			     </ul> 
			     
			 </div>
			
		</div>
		<div class="maintent">
			<ul>
				<li class="libo">
					<ul>
						<li>师资队伍</li>
						<li>
							<ul>
								<li><a href="<?php bloginfo('wpurl');?>/zrjs">专任教师概况</a></li>
								<li><a href="<?php bloginfo('wpurl');?>/js">教授</a></li>
								<li><a href="<?php bloginfo('wpurl');?>/fjs">副教授/博士</a></li>
								<li><a href="<?php bloginfo('wpurl');?>/msh">名师风采</a></li>
							</ul>
						</li>
					</ul>
				</li>
				<li class="libo">
					<ul>
						<li>课程教学</li>
						<li>
							<ul>
								<li><a href="<?php bloginfo('wpurl');?>/bkszz">本科生政治理论课</a></li>
								<li><a href="<?php bloginfo('wpurl');?>/yjszz">研究生政治理论课</a></li>
							</ul>
						</li>
					</ul>
				</li>
				<li>
					<ul>
						<li>基地建设</li>
						<li>
							<ul>
								<li><a href="<?php bloginfo('wpurl');?>/zths">湖南省中国特色社会主义理论<br/>体系研究中心<font style="margin-right:2em">湖南商学院基地</font></a></li>
								<li><a href="<?php bloginfo('wpurl');?>/hnhp">湖南省和平文化研究基地<br/>&nbsp;</a></li>
							</ul>
						</li>
					</ul>
				</li>
				<li class="libo">
					<ul>
						<li>科学研究</li>
						<li>
							<ul>
								<li><a href="<?php bloginfo('wpurl');?>/xktd">学科团队</a></li>
								<li><a href="<?php bloginfo('wpurl');?>/kt">课题研究</a></li>
								<li><a href="<?php bloginfo('wpurl');?>/lw">论文著作</a></li>
								<li><a href="<?php bloginfo('wpurl');?>/cg">成果获奖</a></li>
								<li><a href="<?php bloginfo('wpurl');?>/jl">交流合作</a></li>
							</ul>
						</li>
					</ul>
				</li>
				<li class="libo">
					<ul>
						<li>党建工作</li>
						<li>
							<ul>
								<li><a href="<?php bloginfo('wpurl');?>/dzz">组织建设</a></li>
								<li><a href="<?php bloginfo('wpurl');?>/hdkz">活动开展</a></li>
								<li><a href="<?php bloginfo('wpurl');?>/ddzs">党的知识</a></li>
								<li><a href="<?php bloginfo('wpurl');?>/xxzl">学习专栏</a></li>
							</ul>
						</li>
					</ul>
				</li>
				<li>
					<ul>
						<li>大学生指导</li>
						<li>
							<ul>
								<li><a href="<?php bloginfo('wpurl');?>/hszt"><font style="margin-right:0em">湖南商学院</font>大学生中国特色<br/>社会主义理论体系研究协会</a></li>
								<li><a href="<?php bloginfo('wpurl');?>/pphd">品牌活动<br/>&nbsp;</a></li>
								<li><a href="<?php bloginfo('wpurl');?>/cgyx">成果影响<br/>&nbsp;</a></li>
							</ul>
						</li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
	<script>
            (function(){
                var marquee = document.getElementById('marquee');
                var offset=40;
                var scrollheight =marquee.offsetHeight;
                //还有这里
                var f=setInterval(scroll,50);
                marquee.onmouseover = function (){clearInterval(f);}
                marquee.onmouseout  = function (){ f = setInterval(scroll,50);}
                function scroll(){
                    if(offset == 35){
                  
               			var firstNode = marquee.children[0].cloneNode(true);
                		
						marquee.appendChild(firstNode);
						

						
						//offset = 0;

                    }
                     if(offset == 0	){
                     	
                     	 offset = 40;
                     	 marquee.removeChild(marquee.children[0])
                     	 
                     }
                  	 marquee.style.marginTop = offset+"px";
                    offset -= 0.5;	
                    
                }
            })();
        </script>
<?php get_footer();?>