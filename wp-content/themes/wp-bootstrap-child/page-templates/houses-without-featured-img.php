<?php /* Template Name: houses-without-featured-img */ ?>

<?php

get_header(); ?>

	<!-- <section id="primary" class="content-area col-sm-12 col-lg-8"> -->

	<!-- Sets full width site -->
	<section id="primary" class="content-area col-sm-12">

		<main id="main" class="site-main" role="main">

            <?php while ( have_posts() ) : the_post(); ?>
            
            <!-- Imports the page content -->
			<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
				<div class="post-thumbnail">
					<!-- Dont show the posts featured image on the front page  -->
					<?php //the_post_thumbnail(); ?>
				</div>
				<header class="entry-header">
					<?php the_title( '<h1 class="entry-title">', '</h1>' );
					if ( 'post' === get_post_type() ) : ?>
					<div class="entry-meta">
						<?php wp_bootstrap_starter_posted_on(); ?>
					</div><!-- .entry-meta -->
					<?php
					endif; ?>
				</header><!-- .entry-header -->
				
				<div class="entry-content">
					<?php
					if ( is_single() ) :
						the_content();
					else :
						the_content( __( 'Continue reading <span class="meta-nav">&rarr;</span>', 'wp-bootstrap-starter' ) );
					endif;
		
						wp_link_pages( array(
							'before' => '<div class="page-links">' . esc_html__( 'Pages:', 'wp-bootstrap-starter' ),
							'after'  => '</div>',
						) );
					?>
				</div><!-- .entry-content -->
		
				<footer class="entry-footer">
					<?php wp_bootstrap_starter_entry_footer(); ?>
				</footer><!-- .entry-footer -->
			</article><!-- #post-## -->
				
            <?php endwhile; // End of the loop.?>

		</main><!-- #main -->
	</section><!-- #primary -->

<?php
// get_sidebar();
get_footer('child');
