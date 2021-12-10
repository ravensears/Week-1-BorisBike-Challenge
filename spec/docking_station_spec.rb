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