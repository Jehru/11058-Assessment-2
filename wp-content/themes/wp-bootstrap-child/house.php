<?php /* Template Name: houses-page */ ?>

<?php

get_header(); ?>

	<!-- <section id="primary" class="content-area col-sm-12 col-lg-8"> -->

	<!-- Sets full width site -->
	<section id="primary" class="content-area col-sm-12">

		<main id="main" class="site-main" role="main">

			<?php
			while ( have_posts() ) : the_post();

				 get_template_part( 'template-parts/content', 'page' );

				

			endwhile; // End of the loop.
			?>

		</main><!-- #main -->
	</section><!-- #primary -->

<?php
// get_sidebar();
get_footer('child');
