# Copyright (C) 2003 OZAWA Sakuro <crouton@users.sourceforge.jp>

add_page_attribute_proc {
  if @db.is_frozen?(@page) then
    <<-EOS
    <div class="frozenmark">
      <span class="frozenmark-message">#{frozenmark_message}</span>
    </div>
    EOS
  else
    ''
  end
}
