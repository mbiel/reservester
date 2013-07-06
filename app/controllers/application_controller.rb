class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
    current_owner
  end
end
