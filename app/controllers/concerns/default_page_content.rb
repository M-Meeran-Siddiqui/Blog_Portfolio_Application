module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action  :set_page_defaults
  end

  def set_page_defaults
      @page_title = "Meeran Siddiqui | Ruby on Rails Developer Portfolio"  
      @seo_keywords = "Meeran Siddiqui portfolio"
  end

end

  
  
