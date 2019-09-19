require_relative 'docking_station'
require_relative 'bike'

station = DockingStation.new
bike = Bike.new

station.dock(bike)

station.release_bike(bike)
