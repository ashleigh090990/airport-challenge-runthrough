require 'capybara/rspec'

feature 'Working Airport' do

  let (:airport) {Airport.new}
  let (:plane) {Plane.new}

  scenario 'allows plane to land' do
    allow(airport).to receive(:forecast).and_return("sunny")
    airport.lands(plane)
    expect(plane.status).to eq('landed')
  end


  scenario 'allows planes to take off' do
    allow(airport).to receive(:forecast).and_return("sunny")
    airport.lands(plane)
    airport.takeoff(plane)
    expect(plane.status).to eq('flying')
  end

  scenario 'not allow plane to land when hanger full' do
    allow(airport).to receive(:forecast).and_return("sunny")
    6.times { airport.lands(plane) }
    expect{airport.lands(plane)}.to raise_error("Airport is full")
  end

  scenario 'plane can\'t land if stormy' do
    allow(airport).to receive(:forecast).and_return("stormy")
    expect{airport.lands(plane)}.to raise_error('Stormy weather do not land')

  end

  scenario 'plane cannot take off if stormy' do
    allow(airport).to receive(:forecast).and_return("sunny")
    airport.lands(plane)
    allow(airport).to receive(:forecast).and_return("stormy")
    expect{airport.takeoff(plane)}.to raise_error('Stormy weather, cannot take-off')
  end

end