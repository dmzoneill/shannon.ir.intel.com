<?php
/* Widget Code */



class pra_flexi_related_posts_to_content_widget extends WP_Widget {

// constructor
 public function __construct(){
 
$widget_ops = array('classname' => 'pra_flexi_related_posts_to_content_widget_class','description' => 'Display related posts.');
//parent::__construct('pra_flexi_related_posts_to_content_widget', __('Super Related Posts'), $widget_ops);
$this->alt_option_name = 'widget_related_entries';
$this-> WP_Widget('pra_flexi_related_posts_to_content_widget', 'Flexi Related Posts', $widget_ops );

        add_action( 'save_post', array($this, 'flush_widget_cache') );
        add_action( 'deleted_post', array($this, 'flush_widget_cache') );
        add_action( 'switch_theme', array($this, 'flush_widget_cache') );
		
}

// widget form creation
function form($instance) {

$defaults = array( 'title' => 'Flexi Related Posts', 'no_posts' => '4', 'post_direction' => '', 'post_border' => 'no', 'post_range' => '', 'post_need_content' => '');
$instance = wp_parse_args((array) $instance, $defaults);

$direction = $instance['post_direction'];
$no_posts = $instance['no_posts'];
$post_border = $instance['post_border'];
$post_range = $instance['post_range'];
$post_need_content = $instance['post_need_content'];
$title     = isset( $instance['title'] ) ? esc_attr( $instance['title'] ) : '';
$show_date = isset( $instance['show_date'] ) ? (bool) $instance['show_date'] : false;


?>

<p><label for="<?php echo $this -> get_field_id('title'); ?>"><?php _e('Title:'); ?><
/label>
<input class="widefat" id="<?php echo $this -> get_field_id('title'); ?>" name="<?php echo $this -> get_field_name('title'); ?>" type="text" value="<?php echo $title; ?>" /></p>

<p>
<label for="<?php echo $this -> get_field_id('no_posts'); ?>"><?php _e('No of Posts:'); ?><
/label>
<input class="widefat"  id="<?php echo $this -> get_field_id('no_posts'); ?>" name="<?php echo $this -> get_field_name('no_posts'); ?>" type="text"  value="<?php echo esc_attr($no_posts); ?>" />
</p>
<p>
Post Direction:
<select class="widefat" id="<?php echo $this -> get_field_id('post_direction'); ?>" name="<?php echo $this -> get_field_name('post_direction'); ?>">
<option value="-1">Select Direction</option>
<option value="Verticle" <?php
if (esc_attr($direction) == 'Verticle')
	echo 'selected';
?>>Verticle</option>
<option value="Horizontal" <?php
if (esc_attr($direction) == 'Horizontal')
	echo 'selected';
?>>Horizontal</option>

</select>
</p>
<p>
Border:
<select id="<?php echo $this -> get_field_id('post_border'); ?>" name="<?php echo $this -> get_field_name('post_border'); ?>" class="widefat" >

<?php if(esc_attr($post_border)=='No'):
?>
<option value="Yes" >Yes</option>
<option value="No" selected>No</option>

<?php elseif (esc_attr($post_border)=='Yes'): ?>
<option value="Yes" selected>Yes</option>
<option value="No" >No</option>
<?php else: ?>
<option value="Yes">Yes</option>
<option value="No"  selected>No</option>

<?php endif; ?>
</select>
</p>

<p>
Default Time Range:
<select id="<?php echo $this -> get_field_id('post_range'); ?>" name="<?php echo $this -> get_field_name('post_range'); ?>" class="widefat" >

<option value="-1">Select Time Range</option>
<option value="1 day" <?php selected($post_range, '1 day'); ?>>1 Day</option>
<option value="3 days" <?php selected($post_range, '3 days'); ?>>3 Day</option>
<option value="7 days" <?php selected($post_range, '7 days'); ?>>7 Day</option>
<option value="15 days" <?php selected($post_range, '15 days'); ?>>15 Day</option>
<option value="30 days" <?php selected($post_range, '30 days'); ?>>30 Day</option>
<option value="3 months" <?php selected($post_range, '3 months'); ?>>3 Months</option>
<option value="6 months" <?php selected($post_range, '6 months'); ?>>6 Months</option>
<option value="9 months" <?php selected($post_range, '9 months'); ?>>9 Months</option>
<option value="1 year" <?php selected($post_range, '1 year'); ?>>1 Year</option>
</select>
</p>
<p>
Post Need Content:
<input type="radio" name="<?php echo $this -> get_field_name('post_need_content'); ?>" class="widefat"  value="yes" <?php
if (esc_attr($post_need_content) == 'yes')
	echo 'checked';
?>>
Yes
<input type="radio" name="<?php echo $this -> get_field_name('post_need_content'); ?>" class="widefat"  value="no" <?php
if (esc_attr($post_need_content) == 'no')
	echo 'checked';
?>>
No
<br>
</p>

<?php
}

// widget update
function update($new_instance, $old_instance) {
$instance = $old_instance;
$instance['title'] = strip_tags($new_instance['title']);
$instance['post_direction'] = strip_tags($new_instance['post_direction']);
$instance['no_posts'] = strip_tags($new_instance['no_posts']);
$instance['post_border'] = strip_tags($new_instance['post_border']);
$instance['post_range'] = strip_tags($new_instance['post_range']);
$instance['post_need_content'] = strip_tags($new_instance['post_need_content']);
$this->flush_widget_cache();
$alloptions = wp_cache_get( 'alloptions', 'options' );

if ( isset($alloptions['widget_related_entries']) )
delete_option('widget_related_entries');

return $instance;
}

function flush_widget_cache() {
wp_cache_delete('pra_flexi_related_posts_to_content_widget', 'widget');
}

// widget display
function widget($args, $instance) {
$cache = wp_cache_get('pra_flexi_related_posts_to_content_widget', 'widget');

if ( !is_array($cache) )
$cache = array();

if ( ! isset( $args['widget_id'] ) )
$args['widget_id'] = $this->id;

if ( isset( $cache[ $args['widget_id'] ] ) ) {
echo $cache[ $args['widget_id'] ];
return;
}

ob_start();
extract($args);

if (is_singular('post')) {
$terms = get_the_terms(get_the_ID(), 'category');
$categories = array();
foreach ($terms as $term) {
$categories[] = $term -> term_id;
}
}

$title = ( ! empty( $instance['title'] ) ) ? $instance['title'] : __( 'Related Posts' );
$title = apply_filters( 'widget_title', $title, $instance, $this->id_base );
$direction = ( ! empty( $instance['post_direction'] ) ) ? $instance['post_direction'] : 'Verticle';
$no_posts = ( ! empty( $instance['no_posts'] ) ) ? $instance['no_posts'] : '5';
$post_border = ( ! empty( $instance['post_border'] ) ) ? $instance['post_border'] : 'no';
$post_range = ( ! empty( $instance['post_range'] ) ) ? $instance['post_range'] : '30 days';
$post_need_content = ( ! empty( $instance['post_need_content'] ) ) ? $instance['post_need_content'] : 'yes';

$loop = new WP_Query(apply_filters('widget_posts_args',
array('category__in' => $categories, 'posts_per_page' => $no_posts,
'date_query' => array('column' => 'post_date', 'after' => '- ' . $post_range),
'no_found_rows' => true, 'orderby' => 'rand',
'post_status' => 'publish',
'post__not_in' => array(get_the_ID()),
'ignore_sticky_posts' => true ) ) );

echo $before_widget;
if ($title)
echo $before_title . $title . $after_title;

if ($loop -> have_posts()) {

$theboxclass = 'box_item';

if ($direction == 'Verticle') {
$theboxclass = 'box_item_verticle';
$theimageboxclass = 'img_div_verticle';
$img_cls = 'img_cls_verticle';
$thecontentboxclass = 'content_box_verticle';
$title_div = 'title_div_verticle';
$cont_div='cont_div_verticle';
$readmore = 'readmore_verticle';
} else {
$theboxclass = 'box_item';
$theimageboxclass = 'img_div';
$img_cls = 'img_cls';
$thecontentboxclass = 'content_box';
$title_div = 'title_div';
$cont_div = 'cont_div';
$readmore='readmore';
}

echo '<ul class="flexi_related-posts cls_' . $direction . ' border_' . $post_border . '">';
while ($loop -> have_posts()) {
$loop -> the_post();
echo '<li><div class="' . $theboxclass . '">';

echo '<div class="' . $theimageboxclass . '"><a href="' . get_permalink() . '"><img align="middle" class="'.$img_cls.'" src="' . wp_get_attachment_thumb_url(get_post_thumbnail_id($post -> ID)) . '" alt="" /></div>';

echo '<div class="' . $thecontentboxclass . '">';

echo '<div class="'.$title_div.'">' . get_the_title() . '</div>';
echo '<div class="'.$cont_div.'">';
if ($post_need_content == 'yes') {
echo substr(get_the_content(), 0, 30);
}
echo '</div></a>';
echo '<div class="'.$readmore.'"><a href="get_permalink()">Read More</a></div></div>';

echo '</div></li>';
}
echo '</ul>';

}
wp_reset_postdata();
echo $after_widget;

$cache[$args['widget_id']] = ob_get_flush();
wp_cache_set('widget_recent_posts', $cache, 'widget');

}
}

add_action( 'widgets_init', function(){
register_widget( 'pra_flexi_related_posts_to_content_widget' );
});

function add_flexi_related_post_widget()
{
register_widget("pra_flexi_related_posts_to_content_widget");
}
