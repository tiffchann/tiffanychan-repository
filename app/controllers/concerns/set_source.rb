# This is like a class that will set your facebook, twitter source. 
module SetSource
    extend ActiveSupport::Concern
    
    included do
        before_action :set_source
    end
    
    def set_source
    # source is the name of the session
    # Never put anything secret in the session because it is not secure there.
    session[:source] = params[:q] if params[:q]
    end
end

  
  