require 'spec_helper'

describe EarthTools do
  let(:earthtools) { EarthTools.new }

  describe '#timezone' do
    let(:lat) { '41.882656' }
    let(:long) { '-87.623304' }
    let(:timezone) { earthtools.timezone(lat, long) }

    it 'returns a time' do
      expect{Time.parse(timezone)}.to_not raise_error(Exception)
    end
  end
end