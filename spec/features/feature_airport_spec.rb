require 'capybara/rspec'

feature 'Working Airport' do
  scenario 'allows plane to land' do
    airport = Airport.new
    plane = Plane.new
    airport.lands(plane)
    expect(plane.land).to eq('landed')
  end
end