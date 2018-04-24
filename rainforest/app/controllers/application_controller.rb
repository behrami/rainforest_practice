class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def current_customer
    if session[:customer_id]
      @current_customer ||= Customer.find(session[:customer_id])
    end
  end

  helper_method :current_customer
end
