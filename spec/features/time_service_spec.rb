require 'spec_helper'

describe 'time service' do
  before do
    stasis = EarthTools.new.timezone(lat, long)
    EarthTools.any_instance.stub(:timezone).and_return(stasis)
  end

  let(:lat) { rand(0.0..100.0).to_s }
  let(:long) { rand(0.0..100.0).to_s }
  let(:time) { Time.parse(EarthTools.new.timezone).strftime("%I:%M%p") }

  it 'saves latitude, longitude, and time in the timezone' do
    visit root_path
    fill_in 'geotime_lat', with: lat
    fill_in 'geotime_long', with: long
    click_button 'Submit'
    expect(page).to have_content time
    expect(page).to have_content lat
    expect(page).to have_content long
  end
end