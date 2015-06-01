require 'plane'

class Airport

  attr_accessor :hangar

  def initialize
    @hangar = []
  end

  def lands(plane)
    @status = 'landed'
    @hangar << (plane)
  end

end