<?php
/* Plugin Code */
function pra_flexi_related_posts_to_content($content) {
	if (!is_singular('post')) {
		return $content;
	}
	$terms = get_the_terms(get_the_ID(), 'category');
	$categories = array();
	foreach ($terms as $term) {
		$categories[] = $term -> term_id;
	}

	$direction = esc_attr(get_option('post_direction'));
	$post_per_page = esc_attr(get_option('no_posts'));
	$post_border = esc_attr(get_option('post_border'));
	$post_range = esc_attr(get_option('post_range'));
	$post_need_content = esc_attr(get_option('post_need_content'));
	print_r($categories);
	$args = array('category__in' => $categories, 'posts_per_page' => $post_per_page, 'post__not_in' => array(get_the_ID()), 'date_query' => array('column' => 'post_date', 'after' => '- ' . $post_range), 'orderby' => 'rand');

	$loop = new WP_Query($args);
	$mycontent = "";

	if ($loop -> have_posts()) {
		$content .= "<h2>Related Posts</h2>";
		$content .= '<ul class="flexi_related-posts cls_' . $direction . ' border_' . $post_border . '">';

		$theboxclass = 'box_item';

		if ($direction == 'Verticle') {
			$theboxclass = 'box_item_verticle';
			$theimageboxclass = 'img_div_verticle';
			$img_cls = 'img_cls_verticle';
			$thecontentboxclass = 'content_box_verticle';
			$title_div = 'title_div_verticle';
			$cont_div = 'cont_div_verticle';
			$readmore = 'readmore_verticle';
		} else {
			$theboxclass = 'box_item';
			$theimageboxclass = 'img_div';
			$img_cls = 'img_cls';
			$thecontentboxclass = 'content_box';
			$title_div = 'title_div';
			$cont_div = 'cont_div';
			$readmore = 'readmore';
		}

		$content .= '<ul class="flexi_related-posts cls_' . $direction . ' border_' . $post_border . '">';
		while ($loop -> have_posts()) {
			$loop -> the_post();
			$content .= '<li><div class="' . $theboxclass . '">';

			$content .= '<div class="' . $theimageboxclass . '"><a href="' . get_permalink() . '"><img align="middle" class="' . $img_cls . '" src="' . wp_get_attachment_thumb_url(get_post_thumbnail_id($post -> ID)) . '" alt="" /></div>';

			$content .= '<div class="' . $thecontentboxclass . '">';

			$content .= '<div class="' . $title_div . '">' . get_the_title() . '</div>';
			$content .= '<div class="' . $cont_div . '">';
			if ($post_need_content == 'yes') {
				$content .= substr(get_the_content(), 0, 30);
			}
			$content .= '</div></a>';
			$content .= '<div class="' . $readmore . '"><a href="get_permalink()">Read More</a></div></div>';

			$content .= '</div></li>';
		}
		$content .= '</ul>';

		wp_reset_postdata();
	}
	return $content;
}

add_filter('the_content', 'pra_flexi_related_posts_to_content');


/* ==== Settings and Menu ===== */

add_action('admin_menu', 'pra_flexi_related_posts_page');

function pra_flexi_related_posts_page() {

	add_menu_page('flexi Related Posts Plugin Settings', 'Flexi Related Posts', 'administrator', __FILE__, 'pra_settings_page', plugins_url('/images/wp-icon.png', __FILE__));
	//add_submenu_page(__FILE__, 'Setting    Options', 'Set Options', 'administrator', __FILE__ . 'pra_settings_', 'pra_settings_page');
	add_submenu_page(__FILE__, 'About      Options', 'About', 'administrator', __FILE__ . '_pra_about', 'pra_about_page');
	add_submenu_page(__FILE__, 'Help Title Options', 'Help', 'administrator', __FILE__ . '_pra_help', 'pra_help_page');
	add_action('admin_init', 'pra_register_mysettings');

}

function pra_register_mysettings() {
	register_setting('pra-settings-group', 'no_posts');
	register_setting('pra-settings-group', 'post_direction');
	register_setting('pra-settings-group', 'post_border');
	register_setting('pra-settings-group', 'post_range');
	register_setting('pra-settings-group', 'post_need_content');
}

function pra_settings_page() {
	include PLUGIN_DIR . "include/setting_page.php";
}

function pra_about_page() {
	include PLUGIN_DIR . "include/about_page.php";
}

function pra_help_page() {
	include PLUGIN_DIR . "include/help_page.php";
}

function pra_load_plugin_css() {
	$plugin_url = plugin_dir_url(__FILE__);
	wp_enqueue_style('style1', $plugin_url . 'css/plug_style.css');

}

add_action('wp_enqueue_scripts', 'pra_load_plugin_css');
