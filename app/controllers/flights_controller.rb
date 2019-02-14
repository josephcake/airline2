class FlightsController < ApplicationController
  before_action :authorized



  def index
    # byebug
    @flights = Flight.all.sort
  end

  def new
    @random_num = rand(0..23)
    @flight = Flight.new
    # byebug
  end

  def create
     # byebug
    @flight = Flight.create(flight_params)
    # byebug
    redirect_to "/flights/#{@flight.id}"
  end

  def show
    @flight = Flight.find(params[:id])
  end

  def selected
    # byebug
    @flight = Flight.find(params[:id])
    render :selected_page
  end

  def destroy
    @flight = Flight.find(params[:id])
    @flight.destroy
    redirect_to "/customers/#{session[:customer_id]}"
  end


  private
  def flight_params
    params.require(:flight).permit(:departure_city, :arrival_city, :departure_date, :departure_time, :arrival_time)
  end
end
