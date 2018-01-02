module Vehicles
  class Delete
    attr_reader :vehicle

    def initialize(vehicle)
      @vehicle = vehicle
    end
  end
end
