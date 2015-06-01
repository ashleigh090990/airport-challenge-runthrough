require 'plane'

describe Plane do

  context "Every plane has status" do
    it 'new plane has a status of flying' do
    plane = Plane.new
    expect(subject.status).to eq('flying')
    end

    it'landed plane has status of landed' do
      subject.land
      expect(subject.status).to eq('landed')
    end
  end

end