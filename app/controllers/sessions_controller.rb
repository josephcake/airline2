class SessionsController < ApplicationController

  def new

  end

  def create
    #code
  end

  def check
    #code
  end

  def login
    # @session = Session.create
    flash[:error] = nil
    customer = Customer.find_by(email: params[:email])
    if customer && customer.authenticate(params[:password])
      session[:customer_id] = customer.id
      redirect_to "/customers/#{customer.id}"
    else
      flash[:error] = "Invalid"
      render :check
    end
  end

  def show
    #code
  end

  def destroy
    session.delete :customer_id
    redirect_to "/home"
  end

end
