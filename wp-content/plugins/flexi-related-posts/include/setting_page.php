<div class="wrap">
	<h2>Flexi Related Posts Settings</h2>

	<form method="post" action="options.php">
		<?php settings_fields('pra-settings-group'); ?>
		<?php do_settings_sections('pra-settings-group'); ?>
		<table class="form-table">
			<tr valign="top">
				<th scope="row">No. of Posts To Show</th>
				<td>
				<input type="text" name="no_posts" value="<?php echo esc_attr(get_option('no_posts')); ?>" />
				</td>
			</tr>

			<tr valign="top">
				<th scope="row">Post Direction</th>
				<td>
				<select name="post_direction">

					<option value="-1">Select Direction</option>

					<option value="Verticle" <?php
					if (esc_attr(get_option('post_direction')) == 'Verticle')
						echo 'selected';
					?>>Verticle</option>
					<option value="Horizontal" <?php
					if (esc_attr(get_option('post_direction')) == 'Horizontal')
						echo 'selected';
					?>>Horizontal</option>
				</select></td>
			</tr>

			<tr valign="top">
				<th scope="row">Border</th>
				<td>
				<select name="post_border">

					<?php if(esc_attr( get_option('post_border') )=='No'):
					?>
					<option value="Yes" >Yes</option>
					<option value="No" selected>No</option>

					<?php elseif (esc_attr( get_option('post_border') )=='Yes'): ?>
					<option value="Yes" selected>Yes</option><option value="No" >No</option>
					<?php else: ?>
					<option value="Yes">Yes</option>
					<option value="No"  selected>No</option>

					<?php endif; ?>
				</select></td>
			</tr>

			<tr valign="top">
				<th scope="row">Default Time Range</th>
				<td>
				<select name="post_range">

					<option value="-1">Select Time Range</option>
					<option value="24 hours" <?php
					if (esc_attr(get_option('post_range')) == '24 hours')
						echo 'selected';
					?>>24 Hours</option>
					<option value="1 days" <?php
					if (esc_attr(get_option('post_range')) == '1 day')
						echo 'selected';
					?>>1 Day</option>
					<option value="7 days" <?php
					if (esc_attr(get_option('post_range')) == '7 days')
						echo 'selected';
					?>>7 Days</option>
					<option value="30 days" <?php
					if (esc_attr(get_option('post_range')) == '30 days')
						echo 'selected';
					?>>30 Days</option>
					<option value="3 months" <?php
					if (esc_attr(get_option('post_range')) == '3 months')
						echo 'selected';
					?>>3 Months</option>
					<option value="6 months" <?php
					if (esc_attr(get_option('post_range')) == '6 months')
						echo 'selected';
					?>>6 Months</option>
					<option value="9 months" <?php
					if (esc_attr(get_option('post_range')) == '9 months')
						echo 'selected';
					?>>9 Months</option>
					<option value="1 years" <?php
					if (esc_attr(get_option('post_range')) == '1 years')
						echo 'selected';
					?>>1 Year</option>
				</select></td>
			</tr>

			<tr valign="top">
				<th scope="row">Post Need Content</th>
				<td>
				<input type="radio" name="post_need_content" value="yes" <?php
				if (esc_attr(get_option('post_need_content')) == 'yes')
					echo 'checked';
				?>>
				Yes&nbsp;
				<input type="radio" name="post_need_content" value="no" <?php
				if (esc_attr(get_option('post_need_content')) == 'no')
					echo 'checked';
				?>>
				No
				<br>
				</td>
			</tr>

		</table>

		<?php submit_button(); ?>
	</form>
</div>