require_relative 'bike'

class DockingStation

  attr_reader :bike

  def release_bike
    if @bike == nil
      fail "No bikes available"
    end
    @bike
  end

  def dock(bike)
    @bike = bike
  end

  # def bike
  #   @bike
  # end
  # does the same as attr_reader :bike

end
