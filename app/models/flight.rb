class Flight < ApplicationRecord
  has_many :tickets
  has_many :customers, through: :tickets
  has_many :airport_flights
  has_many :airports, through: :airport_flights

end
