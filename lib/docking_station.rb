require './lib/bike'

class DockingStation
<<<<<<< HEAD
    attr_reader :bike
    
=======

    def initialize
        @has_bike = false
        @docked_bike = []
    end

>>>>>>> ea0859e0d496fc842f8be996f138ec9917a75ae4
    def release_bike
        Bike.new
    end

    def dock(bike)
        @bike = bike
    end

    def dock_bike
        @docked_bike << "Bike"
        @has_bike = true
    end
    @docked_bike
end