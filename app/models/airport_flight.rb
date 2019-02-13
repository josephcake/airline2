class AirportFlight < ApplicationRecord
  belongs_to :flights
  belongs_to :airports
end
