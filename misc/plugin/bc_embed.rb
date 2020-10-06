# coding: utf-8
# bandcamp embed
# Author: ysano@ysnet.org
# Ref: https://bandcamp.com/guide

def bc_album_embed(album_id = 900723172,
                   title = "HANDAYA-VR20 あつまれ杜のみやこ by Handaya Rave",
                   url = "https://handayarave.bandcamp.com/album/handaya-vr20")
  width = "100%"
  height = "120px"
  tracklist = "false"
  size = "large"
  artwork = "small"
  <<-HTML
<iframe style="border: 0; width: #{width}; height: #{height};" src="https://bandcamp.com/EmbeddedPlayer/album=#{album_id}/size=#{size}/bgcol=ffffff/linkcol=0687f5/artwork=#{artwork}/tracklist=#{tracklist}/transparent=true/" seamless><a href="#{url}">#{title}<a></iframe>
HTML
end

def bc_followme_embed(id = 278856838)
  <<-HTML
  <iframe scrolling="no" style="border: 0;width: 100%;height: 50px;" src="https://bandcamp.com/band_follow_button_deluxe/#{id}"></iframe>
HTML
end
