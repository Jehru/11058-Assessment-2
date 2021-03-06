<?php
/**
 * Template part for displaying results in search pages
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package WP_Bootstrap_Starter
 */

//  This file is overloading the main themes search page content

?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
	<header class="entry-header">
		<?php the_title( sprintf( '<h2 class="entry-title"><a href="%s" rel="bookmark">', esc_url( get_permalink() ) ), '</a></h2>' ); ?>
	</header><!-- .entry-header -->

	<!-- The css for this div shows the image and text side by side -->
	<div class="entry-summary">
		<div class="search-item-image">
			<!-- If there is a post thumnail then show it otherwise say that no image was found -->
			<!-- Url allows user to click on the image to get to the page -->
			<?php if ( has_post_thumbnail() ) { ?>
				<a href="<?php echo esc_attr( esc_url( get_page_link() ) ) ?>">
					<?php the_post_thumbnail( 'thumbnail' ); ?>
				</a>
			<?php 
				} else {
					// Otherwise gets a (no image found) image with the thumnail size
					echo '<img src="' . get_bloginfo( 'stylesheet_directory' ) 
					. '/images/no-image-found.png" width="150" height="150" />';				}
			?>
			
		</div>

			<div class="search-item-text">
				<?php the_excerpt(); ?>
			</div>
	</div><!-- .entry-summary -->

	<footer class="entry-footer">
		<?php if ( 'post' === get_post_type() ) : ?>
			<div class="entry-meta">
				<?php wp_bootstrap_starter_posted_on(); ?>
			</div><!-- .entry-meta -->
		<?php endif; ?>

		<?php wp_bootstrap_starter_entry_footer(); ?>
	</footer><!-- .entry-footer -->
</article><!-- #post-## -->
