class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def not_found
    respond_to do |format|
      format.html { render template: '404', layout: 'layouts/application', status: 404 }
      format.all  { render nothing: true, status: 404 }
    end
    raise ActionController::RoutingError.new('Not Found')
  end
end
