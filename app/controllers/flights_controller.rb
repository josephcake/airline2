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

  # def new_random
  #   @flight = Flight.new
  #   render :new_random
  # end

  def create_random
    rand_depart = Airport.all.map { |e| e.city }.sample
    rand_arrive = Airport.all.map { |e| e.city }.sample
    rand_date = (Time.now)
    # rand_date = "01/15/1999"
    # byebug
    rand_d_time = rand(0..12)
    rand-a_time = rand(13..23)*-1
    @flight = Flight.create(:departure_city => rand_depart, :arrival_city => rand_arrive, :departure_date => rand_date, :departure_time => rand_d_time, :arrival_time => rand-a_time)
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
