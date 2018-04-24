class CustomersController < ApplicationController

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new
    @customer.email = params[:customer][:email]
    @customer.password = params[:customer][:password]
    @customer.password_confirmation = params[:customer][:password_confirmation]

    if @customer.save
      redirect_to root_url
    else
      render :new
    end
  end

end
