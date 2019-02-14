class Airport < ApplicationRecord
  has_many :airport_flights
  has_many :flights, through: :airport_flights

  def self.search(search)
    if search
      airport = Airport.find_by(city: search)
      else
      Airport.all
    end
  end

  def self.sortname
    return self.all.sort_by do |airport|
      airport.city
    end
  end

end
