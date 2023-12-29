<?php
/**
 * The template for displaying archive pages
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package wpbstarter
 */

get_header();
?>

<div class="wpbstarter-page-title-area archive-title">
		<div class="container">
				<div class="row">
					<div class="col-lg-12">
							<?php
								the_archive_title( '<h1 class="page-title">', '</h1>' );
								the_archive_description( '<div class="archive-description">', '</div>' );
							?>
						<?php 
						if(function_exists('bcn_display')){
							bcn_display();
						} 
					?>
					</div>
				</div>
		</div>
</div>
<div id="primary" class="content-area wpbstarter-content-area-padding">
    <main id="main" class="site-main">

        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="wpbstarter-blog-list">
                        <?php if (have_posts()) : ?>
                            <div class="row">
                                <?php
                                while (have_posts()) :
                                    the_post();
                                ?>
                                    <div class="col-md-4">
                                        <?php
                                        get_template_part('template-parts/content', get_post_type());
                                        ?>
                                    </div>
                                <?php
                                endwhile;
                                ?>
                            </div> 
                            <?php
                            the_posts_pagination(array(
                                'prev_text' => __('&laquo; Previous'),
                                'next_text' => __('Next &raquo;'),
                            ));
                            ?>
                        <?php else :
                            get_template_part('template-parts/content', 'none');
                        endif;
                        ?>
                    </div>
                </div>
            </div>
        </div>
        <script>
        	jQuery(document).ready(function($) {
			    var ajaxurl = '<?php echo admin_url('admin-ajax.php'); ?>';
			    $.ajax({
			        url: ajaxurl,
			        type: 'POST',
			        dataType: 'json',
			        data: {
			            action: 'get_architecture_projects'
			        },
			        success: function(response) {
			            if (response.success) {
			                console.log(response.data);
			            } else {
			                console.log('Error fetching projects.');
			            }
			        },
			        error: function(xhr, status, error) {
			            console.log('Ajax request failed');
			        }
			    });
			});
    	</script>
    </main><!-- #main -->
</div><!-- #primary -->
<?php
get_footer();
?>