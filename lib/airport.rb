require_relative 'plane'
require_relative 'weather'

class Airport

  include Weather

  attr_accessor :hangar, :capacity

  DEF_CAPACITY = 6

  def initialize
    @hangar = []
    @capacity = DEF_CAPACITY
  end

  def lands(plane)
    if self.forecast == 'stormy'
      fail "Stormy weather do not land"
    elsif @hangar.count < @capacity && self.forecast == 'sunny'
        plane.land
        @hangar << (plane)
    else
        fail "Airport is full"
    end
  end

  def takeoff(plane)
    if self.forecast == 'stormy'
      fail "Stormy weather, cannot take-off"
    else
      plane.takes_off
      @hangar.pop
    end
  end

end