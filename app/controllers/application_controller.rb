class ApplicationController < ActionController::Base
  layout :layout_by_resource
  protect_from_forgery

  before_filter :assign_user
  def assign_user
    #fake auth or something ?
    @current_manager = Manager.first
  end

  protected

    def layout_by_resource
      if devise_controller?
        "login"
      else
        "application"
      end
    end

end
