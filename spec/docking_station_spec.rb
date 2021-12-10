require 'docking_station.rb'

describe DockingStation do
    describe 'release_bike' do 
      it { is_expected.to respond_to :release_bike } 
    end

    describe 'release_bike' do 
      it 'releases a bike' do
        station = DockingStation.new
        expect(station.release_bike).to be_instance_of(Bike)
      end
    end

    describe 'working?' do
      it 'pull bike and check to see if working' do
      bike = Bike.new
      expect(bike.working?).to eq true
      end
    end

<<<<<<< HEAD
    it 'docks something' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike  
    end

    it 'returns docked bikes' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq bike
    end
end
=======
    describe 'dock_bike' do
      it { is_expected.to respond_to :dock_bike }
    end
  end

=begin
    it "can say if it has a bike" do
      # Arrange
      station = DockingStation.new
      bike = station.dock_bike
      #ACtions
      #Assert
      expect(dock_bike(@docked_bike)).not_to eq nil
    end
=end
>>>>>>> ea0859e0d496fc842f8be996f138ec9917a75ae4
