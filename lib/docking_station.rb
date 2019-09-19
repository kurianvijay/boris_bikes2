require_relative 'bike'

class DockingStation

  # @docked_bikes = []

  def release_bike
    Bike.new
  end

  def dock(bike)
    @bike
  end

end
