require_relative 'bike'

class DockingStation

  attr_reader :bikes
  attr_accessor :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    # fail "No bikes available" if @bikes.count == 0
    fail "No bikes available" if empty?
    @bikes.pop
  end

  def dock(bike)
    if full?
      fail "Dock full"
    end
    @bikes << bike
  end

 private

  def full?
   if @bikes.count >= capacity
     true
   end
  end

  def empty?
    if @bikes.count == 0
      true
    end
  end

  # def bike
  #   @bike
  # end
  # does the same as attr_reader :bike

end
