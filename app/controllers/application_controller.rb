# THE MASTER CONTROLLER FOR THE ENTIRE APP.
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist
  
  before_action :set_source
  
  def set_source
    # source is the name of the session
    # Never put anything secret in the session because it is not secure there.
    session[:source] = params[:q] if params[:q]
  end
end
