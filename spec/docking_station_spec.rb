require 'docking_station'

describe DockingStation do
  it 'releases a bike' do
    expect(subject).to respond_to :release_bike
  end

  it 'releases working bikes' do
    bike = Bike.new
    subject.dock(bike)
    # bike = subject.release_bike
    expect(subject.release_bike).to be_working
  end


  it 'docks a bike' do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it 'docks a bike and stores it' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq(subject.bikes)
  end

  it 'returns a bike' do
    expect(subject).to respond_to :bikes
  end

  # it 'read from an instance variable to return a docked bike' do
  #   bike = Bike.new
  #   subject.dock(bike)
  #   expect(subject.bikes).to eq bike
  # end


  it 'does not release infinite bikes' do
    bike = Bike.new
    expect { subject.release_bike }.to raise_error "No bikes available"
  end

  it '#release_method reconfigured' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
  end

  it 'does not allow docking of more than 1 bike' do
    DockingStation::DEFAULT_CAPACITY.times { subject.dock(Bike.new) }
    expect { subject.dock(Bike.new) }.to raise_error "Dock full"
  end

  it 'it sets instance variable @capacity when DS.new called' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

end

# bike = Bike.new
# subject.dock(bike)
