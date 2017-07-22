module DefaultPageContent
  extend ActiveSupport::Concern
  
   included do
    before_action :set_page_defaults
  end
 
  def set_page_defaults
    @page_title = "Shownola Portfolio | My Portfolio Website"
    @seo_keywords = "Sherry Wasieko portfolio"
  end
 
end