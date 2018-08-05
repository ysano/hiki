# soundcloud embed
# Author: ysano@ysnet.org
# Ref: https://developers.soundcloud.com/docs/api/html5-widget

def sc_embed(track_id = 282093324,
             visual = nil,
             auto_play = nil,
             color = "#ff5500",
             height = "300"
            )

  # sc pro values
  hide_related = false
  show_comments = true
  show_user = true
  show_reposts = false
  show_teaser = true

  height = "166" unless visual
  
  auto_play = auto_play ? "true" : "false"
  hide_related = hide_related ? "true" : "false"
  show_comments = show_comments ? "true" : "false"
  show_user = show_user ? "true" : "false"
  show_reposts = show_reposts ? "true" : "false"
  show_teaser = show_teaser ? "true" : "false"
  visual = visual ? "true" : "false"
  <<-HTML
<iframe width="100%" height="#{height}" scrolling="no" frameborder="no" allow="autoplay"
  src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/#{track_id}&amp;color=#{URI.escape(color)}&amp;auto_play=#{auto_play}&amp;hide_related=#{hide_related}&amp;show_comments=#{show_comments}&amp;show_user=#{show_user}&amp;show_reposts=#{show_reposts}&amp;show_teaser=#{show_teaser}&amp;visual=#{visual}">
</iframe>
HTML
end

export_plugin_methods(:sc_embed)
