require 'csv'
class ApplicationController < ActionController::Base
  helper_method :current_user

  def current_user
    if session[:customer_id]
      @current_user = Customer.find(session[:customer_id])
    end
  end

  def logged_in?
    !!current_user
  end

  def authorized
    redirect_to "/home" unless logged_in?
  end
end
