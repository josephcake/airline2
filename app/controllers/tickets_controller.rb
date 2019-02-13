class TicketsController < ApplicationController
  before_action :authorized

  def index
    #code
  end

  def new
    @flight = Flight.find_by(paras[:id])
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.create(ticket_params)
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
