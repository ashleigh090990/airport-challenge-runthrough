require_relative 'plane'

class Airport

  attr_accessor :hangar, :capacity

  DEF_CAPACITY = 6

  def initialize
    @hangar = []
    @capacity = DEF_CAPACITY
  end

  def lands(plane)
    plane.land
    if @hangar.count < @capacity
        @hangar << (plane)
    else
        fail "Airport is full"
    end
  end

  def takeoff(plane)
    plane.takes_off
    @hangar.pop
  end

end