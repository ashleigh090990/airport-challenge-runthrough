require 'airport'

describe Airport do
  it "can store planes" do
    airport = Airport.new
    plane = double :plane
    subject.lands(plane)
    expect(subject.hangar).to eq([plane])
  end
end