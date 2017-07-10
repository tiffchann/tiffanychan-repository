# THE MASTER CONTROLLER FOR THE ENTIRE APP.
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  include DefaultPageContent
  
  before_action :set_copyright
  
  def set_copyright
    @copyright = ChanViewTool::Renderer.copyright 'Tiffany Chan', "All right reserved"
  end
end


