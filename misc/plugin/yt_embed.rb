# youtube embed
# Author: ysano@ysnet.org
# Ref: https://developers.google.com/youtube/iframe_api_reference

def yt_embed(mid = "Of_hx4UE0r8")
  <<-HTML
<iframe width="560" height="315" src="https://www.youtube.com/embed/#{mid}" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
HTML
end

export_plugin_methods(:yt_embed)
