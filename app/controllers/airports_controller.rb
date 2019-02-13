class AirportsController < ApplicationController
  before_action :authorized

  def index
    @airports = Airport.all
    @airport = Airport.search(params[:search])
  end

  def new
    @airport = Airport.new
  end

  def create
    @airport = Airport.create(airport_params)
    # byebug
    redirect_to "/airports/#{@airport.id}"
  end

  private
  def airport_params
    params.require(:airport).permit(:city, :state, :state_code, :airport_code, :airport_name, :search)
  end
end
