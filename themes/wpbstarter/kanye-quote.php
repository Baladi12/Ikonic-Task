<?php
/*
Template Name: Kanye Quote
*/

get_header();

?>

<div id="primary" class="content-area">
    <main id="main" class="site-main">
        <section class="kanye-quote-section">
            <div class="kanye-quote-container">
                <?php
                // Fetch data from the API
                $response = wp_remote_get('https://api.kanye.rest/');
                
                if (!is_wp_error($response) && $response['response']['code'] === 200) {
                    $data = json_decode(wp_remote_retrieve_body($response));
                    
                    // Display the Kanye quote
                    if ($data && isset($data->quote)) {
                        echo '<p class="kanye-quote">' . esc_html($data->quote) . '</p>';
                    } else {
                        echo '<p class="kanye-quote">No quote available at the moment.</p>';
                    }
                } else {
                    echo '<p class="kanye-quote">Failed to fetch the quote. Please try again later.</p>';
                }
                ?>
            </div>
        </section>
    </main>
</div>

<?php get_footer(); ?>