class FlightsController < ApplicationController
  before_action :authorized



  def index
    # byebug
    @flights = Flight.all
  end

  def new
    @random_num = rand(0..23)
    @flight = Flight.new
    # byebug
  end

  def create
    @flight = Flight.create(flight_params)
    # @flight = Flight.create(flight_params)
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


  private
  def flight_params
    params.require(:flight).permit(:departure_city, :arrival_city, :departure_date, :departure_time, :arrival_time)
  end
end
