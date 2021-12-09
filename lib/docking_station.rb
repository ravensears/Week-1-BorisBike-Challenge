require './lib/bike'

class DockingStation

    def initialize
        @has_bike = false
        @docked_bike = []
    end

    def release_bike
        return Bike.new
    end

    def dock_bike
        @docked_bike << "Bike"
        @has_bike = true
    end
    @docked_bike
end