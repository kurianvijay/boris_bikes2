require 'docking_station'

describe DockingStation do
  it 'releases a bike' do
    expect(subject).to respond_to :release_bike
  end

  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it 'docks a bike' do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it 'docks a bike and stores it' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end
  it 'returns docked bikes' do
    expect(subject).to respond_to :bike
  end


end
