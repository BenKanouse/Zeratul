class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :assign_user
  def assign_user
    #fake auth or something ? 
    @current_manager = Manager.first
  end
end
