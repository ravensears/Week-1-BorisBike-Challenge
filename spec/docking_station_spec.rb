require 'docking_station'

describe DockingStation do
  describe 'release_bike' do 
    it { is_expected.to respond_to :release_bike } 
  end

  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      subject = DockingStation.new
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  describe '#release_bike' do 
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)  
      expect(subject.release_bike).to eq bike
    end
  end

  describe '#dock' do
    it 'raises and error when full' do
      20.times { subject.dock Bike.new }
      expect { subject.dock Bike.new}.to raise_error 'Docking Station Full'
    end
  end

  it 'pull bike and check to see if working' do
    bike = Bike.new
    expect(bike.working?).to eq true
  end

  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq [bike]  
  end

  #it 'returns docked bikes' do
   # bike = Bike.new
   # subject.dock(bike)
   # expect(subject.bike).to eq [bike]
  #end
end