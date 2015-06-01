require 'plane'

describe Plane do

  context "Every plane has status" do
    it 'new plane has a status of flying' do
    expect(subject.status).to eq('flying')
    end

    it'landed plane has status of landed' do
      subject.land
      expect(subject.status).to eq('landed')
    end

    it 'plane has status of flying when it takes off' do
      subject.land
      subject.takes_off
      expect(subject.status).to eq('flying')
    end

  end

end