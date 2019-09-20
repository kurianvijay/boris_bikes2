require_relative 'bike'

class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    if @bikes.count == 0
      fail "No bikes available"
    end
    @bikes.pop
  end

  def dock(bike)
    if @bikes.count >= 20
      fail "Dock full"
    end
    @bikes << bike
  end

  # def bike
  #   @bike
  # end
  # does the same as attr_reader :bike

end
