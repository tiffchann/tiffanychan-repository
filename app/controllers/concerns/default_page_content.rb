module DefaultPageContent
extend ActiveSupport::Concern
   
   included do 
    before_action :set_page_defaults
   end

    def set_page_defaults
    @page_title = "DevCampPortfolio | My Website"
    @seo_keywords = "Tiffany Chan Portfolio"
    end
end


  
  
  