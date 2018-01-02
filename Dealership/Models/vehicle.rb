class Vehicle < VehicleRecord
  price_control :asking_price_cents, allow_nil: true, numericality: { greater_than_or_equal_to: 0 }
  validates_presence_of :vin, :year, :make, :model
  validates_numericality_of :year, greater_than_or_equal_to: 1900, less_than: 2050
  validates_length_of :vin, is: 17
  validates_numericality_of :mileage, greater_than_or_equal_to: 0, less_than: 1_000_000, allow_nil: true

end
