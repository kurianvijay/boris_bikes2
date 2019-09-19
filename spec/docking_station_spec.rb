require 'docking_station'

describe DockingStation do
  it 'releases a bike' do
    expect(subject).to respond_to :release_bike
  end

  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

# it 'docks a bike at a docking station' do
  it { is_expected.to respond_to(:dock).with(1).argument }
  # expect(bike).to respond_to :dock
# end



end
