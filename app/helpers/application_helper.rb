module ApplicationHelper
  def qr_table(qr)
    s = "<table class='qr-table'>"
    qr.modules.each_index do |x|
      s += "<tr>"
      qr.modules.each_index do |y|
        s += "<td class='#{ @qr.dark?(x,y) ? 'black' : 'white' }' />"
      end
      s += "</tr>"
    end
    s += "</table>"
    s.html_safe
  end

  def answ_option(label, answ)
    s = "<b class='icon-trash'></b> <b class='icon-pencil'></b> "
    s += "<b>#{label}</b>"
    s += " - <span class='reorder'>#{answ}</span>"
    s.html_safe
  end
end
