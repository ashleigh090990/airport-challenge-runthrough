require 'airport'

describe Airport do

  it "can store planes" do
    allow(subject).to receive(:forecast).and_return("sunny")
    plane = double :plane
    allow(plane).to receive(:land)
    subject.lands(plane)
    expect(subject.hangar).to eq([plane])
  end

  it "allows plane to take off" do
    allow(subject).to receive(:forecast).and_return("sunny")
    plane = double :plane
    allow(plane).to receive(:land)
    allow(plane).to receive(:takes_off)
    subject.lands(plane)
    subject.takeoff(plane)
    expect(subject.hangar).to be_empty
  end

  it 'has a capacity of 6' do
    allow(subject).to receive(:forecast).and_return("sunny")
    plane = double :plane
    allow(plane).to receive(:land)
    6.times { subject.lands(plane) }
    expect(subject.hangar.count).to eq(6)
  end

end