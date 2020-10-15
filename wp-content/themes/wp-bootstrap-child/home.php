<?php /* Template Name: home-page */ ?>

<!-- Need to have a template name and then apply to the (Page Attributes > Template) section so that this code applies -->

<!-- Gets the Custom Header Page -->
<?php get_header('child'); ?>

	<!-- Original Code -->
	<!-- <section id="primary" class="content-area col-sm-12 col-lg-8"> 
		<main id="main" class="site-main" role="main"> -->

	<!-- This line of code reads the page content (Which the user can edit) and displays it on the website 
	however I have imported it manually because the home page is different to other pages -->
	<?php // get_template_part( 'template-parts/content', 'page' ); ?>


	<!-- New code -->
	<!-- Sets full width site -->
	<section id="primary" class="content-area col-sm-12">
		<main id="main" class="site-main" role="main">

	<!-- Imports the page content -->
	<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
		<div class="post-thumbnail">
			<!-- Dont show the posts featured image on the front page  -->
			<?php //the_post_thumbnail(); ?>
		</div>
		<header class="entry-header">
			<?php

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


		</main><!-- #main -->
	</section><!-- #primary -->

<?php
// No Sidebar 
// get_sidebar();

// Gets Custom footer page
get_footer('child');
