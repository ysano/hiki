# http://opal.s8.xrea.com/hikifarm/Ruby/?FontPlugin
def myescape(array)
  array.collect!{|x| x.to_s.escapeHTML}
end

def fontf(text, face)
  text, face = myescape([text, face])
  %Q(<font face="#{face}">#{text}</font>)
end

def fontc(text, color)
  text, color = myescape([text, color])
  %Q(<font color="#{color}">#{text}</font>)
end

def fonts(text, size)
  text, size = myescape([text, size])
  %Q(<font size="#{size}">#{text}</font>)
end

def font(text, color, face, size)
  text, color, face, size = myescape([text, color, face, size])
  %Q(<font color="#{color}" face="#{face}" size="#{size}">#{text}</font>)
end
