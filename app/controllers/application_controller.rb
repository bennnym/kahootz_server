class ApplicationController < ActionController::Base
   skip_before_action :verify_authenticity_token
   # protect_from_forgery prepend: true, with: :exception

   # skip_before_filter :verify_authenticity_token
   include Knock::Authenticable
end
