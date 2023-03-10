=== YouTube ===
Contributors: embedplus
Plugin Name: YouTube Embed
Tags: youtube channel, video gallery, youtube galleries, channel gallery, gallery, playlist gallery, youtube gallery, accessibility, analytics, api, blocked youtube videos, cache, caching, channel, deleted youtube videos, effects, embed youtube, embedding youtube, featured image, get_locale, i18n, internationalization, l10n, language, lazy, lazy load, locale, localization, mute, no-cookie, oembed, page speed, playlist, playlists, plugin, Reddit, responsive, seo, short code, shortcode, ssl, subtitles, thumbnail, thumbnail image, thumbnails, tinymce, translate, translator, video, video analytics, video plugin, video seo, video shortcode, video thumbnails, view count, volume, widget, wordpress security, wordpress youtube embed, youtube, youtube api, youtube analytics, youtube embed, youtube impressions, youtube player, youtube playlist, youtube plugin, youtube shortcode, youtube snippets, youtube takedowns, youtube thumbnails, youtube plugin migration
Requires at least: 3.3
Tested up to: 4.3
Stable tag: 10.8
License: GPLv3 or later

YouTube embed plugin. Embed a responsive video, YouTube channel gallery, or playlist gallery. Add video thumbnails, analytics, SEO, caching...

== Description ==

**Here are a few recently added features (even more features below):**

* YouTube Channel and Playlist Gallery - The ability to make playlist (and channel) embeds have a gallery layout. By default, the plugin can generate a grid-based [responsive playlist or channel gallery >>](http://www.embedplus.com/responsive-youtube-playlist-channel-gallery-for-wordpress.aspx). Your visitors can browse through pages of video thumbnails and choose from videos that are pulled from an entire YouTube channel or playlist.
* Improved accessibility by using title attributes for screen reader support. It should help your site [pass functional accessibility evaluations (FAE)](https://www.youtube.com/watch?v=gpAiFnYYkbk).
* Site origin information with each embed code as an extra security measure. In YouTube's/Google's own words, checking this option "protects against malicious third-party JavaScript being injected into your page and hijacking control of your YouTube player." We especially recommend checking it as it adds higher security than the built-in YouTube embedding method that comes with the current version of WordPress (i.e. oembed).
* Easy "Insert" button for both the Visual and Text mode of the editor
* [Embed an entire channel as a  (non-gallery, single embedded player) playlist >>](https://www.youtube.com/watch?v=_9D4yMyd40g)
* Start video settings for playlist embeds. You can now choose to start a playlist with a specific video or have the plugin automatically start with the most recently added video.
* [Volume level initialization](http://www.embedplus.com/mute-volume-youtube-wordpress.aspx) - helpful when autoplay is checked
* iOS playback preferences
* [Automatic localization/internationalization](http://www.embedplus.com/youtube-iso-639-1-language-codes.aspx) so you can set the player's interface language from English to another
* Instant HTTPS support. It can even convert past non-HTTPS videos to HTTPS.  Did you know that Google uses [HTTPS/SSL support as a ranking signal for SERP?](http://embedplus.com/convert-old-youtube-embeds-to-https-ssl.aspx)
* "At a Glance" direct access to your YouTube posts/pages
* Shortcode support for [embedding multiple videos on one line >>](https://www.youtube.com/watch?v=KU6lzcNR1FI)
* [General playlist embedding support >>](https://www.youtube.com/watch?v=J50PlRZHH9I)
* [Default HTML5 YouTube player support >>](http://www.embedplus.com/make-sure-youtube-defaults-to-html5-on-wordpress.aspx)
* YouTube plugin migration support

You can even extend the plugin with PRO features like:

* Alternate playlist and channel gallery styling
* Caching to avoid making frequent requests to YouTube.com and speed up your page loads
* [Automatic video thumbnail images](http://embedplus.com/add-youtube-video-thumbnails-featured-image-wordpress.aspx): each post or page that contains at least one video will have the thumbnail of its first video serve as its featured image
* [Eye-catching special effects for YouTube embeds >>](http://www.embedplus.com/add-special-effects-to-youtube-embeds-in-wordpress.aspx) (uses lazy loading)
* Automatic tagging for video SEO
* Automatic Open Graph tagging for Facebook
* Deleted video alerts (i.e., did Google remove or take down videos I previously embedded?) 
* Mobile compatibility checking (i.e., see if your embeds have restrictions that can block your site's mobile visitors from viewing)
* Alerts when visitors from different countries are blocked from viewing your embeds
* And more features and analytics...

**Click the Download button to start exploring now, or take a look at some details below.**

This plugin helps you easily manage the growing complexity of YouTube embedding. It provides a spectrum of basic and advanced features of the YouTube embedded player and will have you posting videos in seconds after installing it. **All you have to do is simply paste an unformatted YouTube link on its own line (shortcodes are also supported).** Your YouTube embeds will then show up when you preview or publish the post.

The settings page has plenty of default options that you can automatically apply to all your embedded YouTube videos. **Check out the free options below:**

* [Force HD quality when available >>](http://www.embedplus.com/force-high-definition-hd-youtube-embed.aspx) (now deprecated)
* Make your videos responsive so that they dynamically fit in all screen sizes (smart phone, PC and tablet)
* Modest branding - hide YouTube logo while playing
* Turn on/off all annotations by default
* Automatically center all your videos
* Automatically start playing your videos
* Autohide controls until hovering
* Loop your videos
* Show/hide related videos at the end
* Show/hide the video title and other info
* Use the light theme
* Show/hide player controls
* Turn on/off closed captions by default
* Use "opaque" wmode

Customizations can be also made to each YouTube embed by adding more to the link as shown below. Adding these will override the above global defaults that you set:

* width - Sets the width of your player. If omitted, the default width will be the width of your theme's content. Example: `http://www.youtube.com/watch?v=quwebVjAEJA&width=500&height=350`
* height - Sets the height of your player. If omitted, this will be calculated for you automatically. Example: `http://www.youtube.com/watch?v=quwebVjAEJA&width=500&height=350`
* vq - Set this to `hd720` or `hd1080` to force the video to play in HD quality, if available. Example: `http://www.youtube.com/watch?v=quwebVjAEJA&vq=hd720`
* autoplay - Set this to 1 to autoplay the video (or 0 to play the video once). Example: `http://www.youtube.com/watch?v=quwebVjAEJA&autoplay=1`
* cc_load_policy - Set this to 1 to turn on closed captioning (or 0 to leave them off). Example: `http://www.youtube.com/watch?v=quwebVjAEJA&cc_load_policy=1`
* iv_load_policy - Set this to 3 to turn off annotations (or 1 to show them). Example: `http://www.youtube.com/watch?v=quwebVjAEJA&iv_load_policy=3`
* loop - Set this to 1 to loop the video (or 0 to not loop). Example: `http://www.youtube.com/watch?v=quwebVjAEJA&loop=1`
* modestbranding - Set this to 1 to remove the YouTube logo while playing (or 0 to show the logo). Example: `http://www.youtube.com/watch?v=quwebVjAEJA&modestbranding=1`
* rel - Set this to 0 to not show related videos at the end of playing (or 1 to show them). Example: `http://www.youtube.com/watch?v=quwebVjAEJA&rel=0`
* showinfo - Set this to 0 to hide the video title and other info (or 1 to show it). Example: `http://www.youtube.com/watch?v=quwebVjAEJA&showinfo=0`
* theme - Set this to 'light' to make the player have the light-colored theme (or 'dark' for the dark theme). Example: `http://www.youtube.com/watch?v=quwebVjAEJA&theme=light`
* autohide - Set this to 1 to slide away the control bar after the video starts playing. It will automatically slide back in again if you mouse over the video. (Set to  2 to always show it). Example: `http://www.youtube.com/watch?v=quwebVjAEJA&autohide=1`

You can also start and end each individual video at particular times. Like the above, each option should begin with '&'

* start - Sets the time (in seconds) to start the video. Example: `http://www.youtube.com/watch?v=quwebVjAEJA&width=500&height=350&start=20`
* end - Sets the time (in seconds) to stop the video. Example: `http://www.youtube.com/watch?v=quwebVjAEJA&width=500&height=350&end=100`

**About the PRO version:**

Beyond the above features, you have the option of upgrading to PRO to add enhanced features like the full visual embedding wizard (so you can avoid memorizing codes), gallery styling for channel and playlist embeds, priority support, and security/performance. As a PRO user, you also get access to our deleted video alerts to help avoid showing embedded videos that are later removed from YouTube.com. You even get an embedder-centric analytics dashboard that adds view tracking to each of your embeds so that you can answers questions like:

* How much are your visitors actually watching the videos you post?
* How does the view activity on your site compare to other sites like it?
* What and when are your best and worst performing YouTube embeds?
* How much do the producers of the YouTube videos you embed rely on **your site**, versus other sites and YouTube.com, for views?
* Are you embedding videos that are blocked in other countries?
* Have your visitors tried to view a page and/or gallery on your site with deleted/unavailable videos?

See more details after installing. Enjoy!

[Maintained by EmbedPlus for YouTube >>](http://www.embedplus.com/)

== Installation ==

1. Use the WordPress plugin installer to install the plugin.  Alternatively, you can just extract the folder in our download package and upload it to your plugin directory.
1. Access the Plugins admin menu to activate the YouTube embed plugin.
1. Make your default settings after clicking the new YouTube menu item that shows up in your admin panel.
1. To embed videos in your post, start pasting the links with any desired additional codes needed for your YouTube embed (see below section for additional codes). Make sure each link is on its own line. Or, if you need multiple videos on the same line, make sure each URL is wrapped properly with the shortcode. Example: `[embedyt]http://www.youtube.com/watch?v=ABCDEFGHIJK&width=400&height=250[/embedyt]` If you don't know exactly which video you want to embed, use the free built-in search feature to find and insert one.
1. You can also [embed a playlist and channel gallery with this plugin >>](http://www.embedplus.com/responsive-youtube-playlist-channel-gallery-for-wordpress.aspx).  Please install the plugin and visit the settings page for instructions.
1. To get video SEO, an analytics dashboard and many other premium features, [sign up for one of the options here >>](https://www.embedplus.com/dashboard/pro-easy-video-analytics.aspx)

**Additional codes (adding these will override the default settings in the admin):**

* width - Sets the width of your player. If omitted, the default width will be the width of your theme's content. Example: `http://www.youtube.com/watch?v=quwebVjAEJA&width=500&height=350`
* height - Sets the height of your player. If omitted, this will be calculated for you automatically. Example: `http://www.youtube.com/watch?v=quwebVjAEJA&width=500&height=350`
* vq - Set this to `hd720` or `hd1080` to force the video to play in HD quality. Example: `http://www.youtube.com/watch?v=quwebVjAEJA&vq=hd720`
* autoplay - Set this to 1 to autoplay the video (or 0 to play the video once). Example: `http://www.youtube.com/watch?v=quwebVjAEJA&autoplay=1`
* cc_load_policy - Set this to 1 to turn on closed captioning (or 0 to leave them off). Example: `http://www.youtube.com/watch?v=quwebVjAEJA&cc_load_policy=1`
* iv_load_policy - Set this to 3 to turn off annotations (or 1 to show them). Example: `http://www.youtube.com/watch?v=quwebVjAEJA&iv_load_policy=3`
* loop - Set this to 1 to loop the video (or 0 to not loop). Example: `http://www.youtube.com/watch?v=quwebVjAEJA&loop=1`
* modestbranding - Set this to 1 to remove the YouTube logo while playing (or 0 to show the logo). Example: `http://www.youtube.com/watch?v=quwebVjAEJA&modestbranding=1`
* rel - Set this to 0 to not show related videos at the end of playing (or 1 to show them). Example: `http://www.youtube.com/watch?v=quwebVjAEJA&rel=0`
* showinfo - Set this to 0 to hide the video title and other info (or 1 to show it). Example: `http://www.youtube.com/watch?v=quwebVjAEJA&showinfo=0`
* theme - Set this to 'light' to make the player have the light-colored theme (or 'dark' for the dark theme). Example: `http://www.youtube.com/watch?v=quwebVjAEJA&theme=light`
* autohide - Set this to 1 to slide away the control bar after the video starts playing. It will automatically slide back in again if you mouse over the video. (Set to  2 to always show it). Example: `http://www.youtube.com/watch?v=quwebVjAEJA&autohide=1`

You can also start and end each individual video at particular times. Like the above, each option should begin with '&'

* start - Sets the time (in seconds) to start the video. Example: `http://www.youtube.com/watch?v=quwebVjAEJA&width=500&height=350&start=20`
* end - Sets the time (in seconds) to stop the video. Example: `http://www.youtube.com/watch?v=quwebVjAEJA&width=500&height=350&end=100`

**Always follow these rules when pasting a link:**

* Make sure the url is really on its own line by itself. Or, if you need multiple videos on the same line, make sure each URL is wrapped properly with the shortcode. Example: `[embedyt]http://www.youtube.com/watch?v=ABCDEFGHIJK&width=400&height=250[/embedyt]`
* Make sure the url is not an active hyperlink (i.e., it should just be plain text). Otherwise, highlight the url and click the "unlink" button in your editor.
* Make sure you did **not** format or align the url in any way. If your url still appears in your actual post instead of a video, highlight it and click the "remove formatting" button (formatting can be invisible sometimes).
* Finally, there's a slight chance your custom theme is the issue, if you have one. To know for sure, we suggest temporarily switching to one of the default WordPress themes (e.g., "Twenty Thirteen") just to see if your video does appear. If it suddenly works, then your custom theme is the issue. You can switch back when done testing.

== Screenshots ==

1. YouTube Embed Screenshot 1: Paste a YouTube link on its own line and it will become a YouTube embed on your website. Or, use the shortcode method.
2. YouTube Embed Screenshot 2: How to get to YouTube's admin settings
3. YouTube Embed Screenshot 3: Visual YouTube Wizard and Search Tool
4. YouTube Embed Screenshot 4: Wizard Insert Search Result Screenshot
5. YouTube Embed Screenshot 5: Wizard Search Results Screenshot
6. YouTube Embed Screenshot 6: Gallery layout for a playlist or channel
7. YouTube Embed Screenshot 7: YouTube playlist galleries are also easily supported.  Here's the Billboard Top 25 Songs for example.
8. YouTube Embed Screenshot 8: Localization/internationalization so you can set the player's interface language

== Changelog ==

= YouTube Embed 10.8 =
This update improves compatibility and adds features to Free and Pro galleries.

= YouTube Embed 10.7 =
Adds legacy option.

= YouTube Embed 10.6 =
Enhanced debugging support for galleries.

= YouTube Embed 10.5 =
Enhanced gallery settings for scrolling, video titles, and thumbnail styling.

= YouTube Embed 10.4 =
Addresses limitations some users were getting when pasting a YouTube channel and/or playlist gallery.

= YouTube Embed 10.3 =
Adds the ability to make playlist and channel embeds have a gallery layout. By the default, the plugin can generate a grid-based [responsive playlist and channel gallery >>](http://www.embedplus.com/responsive-youtube-playlist-channel-gallery-for-wordpress.aspx)

= YouTube Embed 10.2 =
Adds start video settings for playlist embeds. You can now choose to start a playlist with a specific video or have the plugin automatically start with the most recently added video.

= YouTube Embed 10.1 =
Adds the ability to automatically migrate from another plugin's shortcode. Caching feature now allows lifetime settings. Improved compatibility with other plugins using the YouTube API.

= YouTube Embed 10.0 =
This update includes improved tips (Free and Pro) and adds caching to the Pro version for faster page loading.

= YouTube Embed 9.8 =
Upgraded code to use YouTube API v3.

= YouTube Embed 9.7 =
Adds improved accessibility for screen readers and video thumbnail as featured image support.  

= YouTube Embed 9.5 =
Site origin information with each embed code as an extra security measure. In YouTube's/Google's own words, checking this option "protects against malicious third-party JavaScript being injected into your page and hijacking control of your YouTube player." We especially recommend checking it as it adds higher security than the built-in YouTube embedding method that comes with the current version of WordPress (i.e. oembed).

= YouTube Embed 9.4 =
Adds Autofit Widget option for Free and PRO users. Also adds slide from left animation to [PRO effects >>](http://www.embedplus.com/add-special-effects-to-youtube-embeds-in-wordpress.aspx)

= YouTube Embed 9.3 =
Improved volume functionality and interface updates (Free and PRO).  [Special effects added to PRO version >>](http://www.embedplus.com/add-special-effects-to-youtube-embeds-in-wordpress.aspx)

= YouTube Embed 9.2 =
HTTPS/SSL detection is now fully automatic. The manual checkbox is no longer needed.

= YouTube Embed 9.1 =
With this version, the plugin can now automatically detect your site's default language and set the interface of the embedded YouTube player to match.

= YouTube Embed 9.0 =
Adds automatic localization/internationalization so you can set the player's interface language from English to another.

= YouTube Embed 8.9 =
Allows volume level initialization.

= YouTube Embed 8.8 =
* Better embedplus plugin conflict notifications.
* Greater emphasis on HTTPS support due to Google's recent announcement about [HTTPS/SSL as an SEO/SERP signal](http://embedplus.com/convert-old-youtube-embeds-to-https-ssl.aspx).
* Supports latest version of WordPress (3.9.2).

= YouTube Embed 8.7 =
(PRO) Extends the plugin's existing tagging capabilities by also adding Open Graph markup to enhance Facebook sharing/discovery of your pages.

= YouTube Embed 8.6 =
Expanded HTTPS/SSL support.

= YouTube Embed 8.5 =
This update features a new iOS related option for both Free and PRO users. PRO users additionally have the new mobile compatibility checker.

= YouTube Embed 8.4 =
This update features improved responsive theme support for both Free and PRO versions.  It also adds refined schema tag support to the Pro SEO feature.

= YouTube Embed 8.3 =
Now compatible with WordPress 3.9.

= YouTube Embed 8.2 =
An at a glance regex impromevent (all users). Dashboard now warns you of embeds that are blocked from your visitors in other countries (PRO).

= YouTube Embed 8.1 =
Fixes rare YouTube ID issue.

= YouTube Embed 8.0 =
Fixes rare ajax issue.

= YouTube Embed 7.9 =
YouTube searching and inserting now works in Text mode of the editor too.

= YouTube Embed 7.8 =
"At a Glance" direct access to YouTube posts/pages.

= YouTube Embed 7.7 =
Fixes black bar issue when no height/width is specified.

= YouTube Embed 7.6 =
Added notice about Google's HD problem.

= YouTube Embed 7.5 =
Ability to embed an entire channel as a playlist embed.

= YouTube Embed 7.3 =
Change the color of the progress bar from red to white.

= YouTube Embed 7.2 =
Added music video extras to inspire your posts (PRO).

= YouTube Embed 7.1 =
Added autohide controls feature

= YouTube Embed 7.0 =
Shortcode support for embedding multiple videos on one line

= YouTube Embed 6.4 =
Fixes for some users of WordPress 3.8

= YouTube Embed 6.3 =
Removed possible e_notices.

= YouTube Embed 6.2 =
Given the increasing focus on privacy, the no-cookies options was added as a free option to all users.  Priority support enhancements also made.

= YouTube Embed 6.1 =
Easier access to general settings and dashboard.

= YouTube Embed 6.0 =
This version opens up the ability to view Internet video discussions to all wizard users.
**Also, due to numerous users being unable to find the wizard button, we moved it up next to the "Add Media" button.**
Finally, we added Video SEO tags as a PRO option. 

= YouTube Embed 5.1 =
Added ability to set default dimensions.
Enhanced compatibility with SSL sites.

= YouTube Embed 5.0 =
Built-in YouTube video search, viewing, and insertion right from your editor tab (for all users).
The ability to review the latest web discussions about a video you want to embed before embedding it (PRO users).
Other minor optimizations.

= YouTube Embed 4.8 =
Works when pasting embed link in sidebar text widgets

= YouTube Embed 4.7 =
Improved separation of PRO and Free features in the UI

= YouTube Embed 4.6 =
Added optional responsive video layout to fit all screen sizes. (smart phone, PC and tablet)

= YouTube Embed 4.5 =
Added support for playlists.
added support for wmode.

= YouTube Embed 4.1 =
Fixed spacing issue. Also added ability to fall back to old spacing format.

= YouTube Embed 4.0 =
New features for all users: lazy loading for the flash player by default and the ability to hide player controls for a cleaner look.

= YouTube Embed 3.7 =
Enhanced deleted video checker for PRO users

= YouTube Embed 3.5 =
Added ability to try to force HTML5 player to speed up page loading

= YouTube Embed 3.3 =
HTTPS: Added secure YouTube embedding

= YouTube Embed 3.2 =
Ensures video-specific height overrides defaults properly

= YouTube Embed 3.1 =
Fixed obscure height problem

= YouTube Embed 3.0 =
Added Visual YouTube Wizard for PRO users
Added autologin to analytics for PRO users
Added priority support form for PRO users

= YouTube Embed 2.6 =
Compatible with WP 3.6

= YouTube Embed 2.4 =
Added auto HD support
Support for shorthand (i.e. `http://www.youtu.be`)
Fixed editor issue

= YouTube Embed 2.3 =
Start/end time shortcut bug fix

= YouTube Embed 2.2 =
Minor changes

= YouTube Embed 2.1 =
By request from several users, we've added easier access to the video analytics dashboard

= YouTube Embed 2.0 =

This upgrade specifically integrates a user-friendly YouTube Analytics Dashboard to this plugin so you can learn a lot more about the videos you post.  Download it if you would like it to use your site's YouTube-related activity to help answer questions like:
 
* How much are your visitors actually watching the videos you post?
* How does the view activity on your site compare to other sites like it?
* What and when are your best and worst performers?
* How much do the producers of the YouTube videos you embed rely on **your site** for views?

We think these are all interesting questions; however, note that there's no need to upgrade if you don't.

= YouTube Embed 1.1 =
Fixed minor bug.

= YouTube Embed 1.0 =
First release uploaded to the plugin repository.

== Other Notes ==

This YouTube plugin can include premium features like animation effects using lazy loading, alternate playlist and channel gallery styles, automatic video thumbnail support, automatic schema tagging for video SEO, mobile compatibility checking, and deleted video alerts when you [upgrade to PRO](https://www.embedplus.com/dashboard/pro-easy-video-analytics.aspx).

We also have a YouTube channel with some helper videos.  [Check them out here >>](https://www.youtube.com/user/EmbedPlus)