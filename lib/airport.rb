require_relative 'plane'

class Airport

  attr_accessor :hangar

  def initialize
    @hangar = []
  end

  def lands(plane)
    plane.land
    @hangar << (plane)
  end

  def takeoff(plane)
    plane.takes_off
    @hangar.pop
  end

end