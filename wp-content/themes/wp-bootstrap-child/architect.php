<?php /* Template Name: architect-page */ ?>
<!-- Need to have a template name and then apply to the (Page Attributes > Template) section so that this code applies -->

<!-- May need to reset the home page to static 
    Then choose pages > home 
    The blog page will become the news page. All blogs will need to be set as posts, not pages. 
 -->

<?php get_header(); ?>

	<!-- <section id="primary" class="content-area col-sm-12 col-lg-8"> -->

	<!-- Sets full width site -->
	<section id="primary" class="content-area col-sm-12">

		<main id="main" class="site-main" role="main">

        <!-- This line of code reads the page content (Which the user can edit) and displays it on the website -->
        <?php get_template_part( 'template-parts/content', 'page' ); 
        ?>

		</main><!-- #main -->
	</section><!-- #primary -->

<?php
// No Sidebar 
// get_sidebar();
get_footer('child');
