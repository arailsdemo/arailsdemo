module ApplicationHelper
  def coderay(text, lang)
      CodeRay.scan(text, lang).div(
          :css => :class,
          :tab_width => 2)
  end
  
  def coderay_languages
    Hash[*CODERAY_LANGUAGES.map {|l| [l.humanize, l] }.flatten]
  end
end