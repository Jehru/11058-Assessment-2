<?php
/**
 * The child template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 */

?>
<?php if(!is_page_template( 'blank-page.php' ) && !is_page_template( 'blank-page-with-container.php' )): ?>
			</div><!-- .row -->
		</div><!-- .container -->
	</div><!-- #content -->
	<?php //get_template_part( 'footer-widget' ); ?>
	<footer id="colophon" class="site-footer <?php echo wp_bootstrap_starter_bg_class(); ?>" role="contentinfo">
		<div class="container pt-3 pb-3">
            <div class="site-info">
				<?php get_template_part( 'footer-widget' ); ?>
				<?php //echo nl2br ("This website was produced by students in the Faculty of Arts & Design, University of Canberra. \n  The text and images reproduced on this site were generously provided by <a href='http://www.canberrahouse.com.au'> Canberra House </a>")  
				?>  
            </div><!-- close .site-info -->
		</div>
	</footer><!-- #colophon -->
<?php endif; ?>
</div><!-- #page -->

<?php wp_footer(); ?>
</body>
</html>