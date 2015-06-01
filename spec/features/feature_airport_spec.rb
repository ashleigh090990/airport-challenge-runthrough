require 'capybara/rspec'

feature 'Working Airport' do

  let (:airport) {Airport.new}
  let (:plane) {Plane.new}

  scenario 'allows plane to land' do
    airport.lands(plane)
    expect(plane.status).to eq('landed')
  end

  scenario 'allows planes to take off' do
    airport.lands(plane)
    airport.takeoff(plane)
    expect(plane.status).to eq('flying')
  end

  scenario 'not allow plane to land when hanger full' do
    6.times { airport.lands(plane) }
    expect{airport.lands(plane)}.to raise_error("Airport is full")
  end
end