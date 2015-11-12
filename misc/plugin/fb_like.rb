# facebook like
# Author: ysano@ysnet.org
# Ref: https://developers.facebook.com/docs/plugins/like-button/

add_body_enter_proc do
  <<-HTML
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/ja_JP/all.js#xfbml=1";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
HTML
end

def fb_like(href = 'https://www.facebook.com/Handayarave', layout = 'button_count', action = 'like', faces = true, share = true)
  faces = faces ? "true" : "false"
  share = share ? "true" : "false"
  <<-HTML
<div class="fb-like" data-href="#{href}"
 data-layout="#{layout}"
 data-action="#{action}"
 data-show-faces="#{faces}"
 data-share="#{share}"></div>
HTML
end

export_plugin_methods(:fb_like)
