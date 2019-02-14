class TicketsController < ApplicationController
  before_action :authorized

  def index
    #code
  end

  def new
    # byebug
    customer = Customer.find(@@user.id)
    @flight = customer.flights.last
    @ticket = Ticket.new
  end

  def create
    # byebug
     @ticket = Ticket.create(ticket_params)
    redirect_to ticket_path(@ticket)
  end

  def create_flight
    @customer=Customer.find(session[:customer_id])
    @flight=Flight.find(params[:id])
    @customer.flights << @flight
    redirect_to "/customers/#{@customer.id}"
  end


  def show
    @ticket = Ticket.find(params[:id])
  end

  def edit
    #code
  end

  def update
    #code
  end

  def destroy
    #code
  end

  private
  def ticket_params
    params.require(:ticket).permit(:seat_number, :customer_id, :flight_id)
  end
end
