class SessionsController < ApplicationController
    def new
    end

    def create
     customer = Customer.find_by(email: params[:session][:email])
     if customer && customer.authenticate(params[:session][:password])
       session[:customer_id] = customer.id
       redirect_to products_path, notice: "Logged in!" #why did it have _url instead of path in the assignment???
     else
       render :new
     end
    end

   def destroy
     session[:customer_id] = nil
     redirect_to products_path, notice: "Logged out!" #why did it have _url instead of path in the assignment???
   end
end
