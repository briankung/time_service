require 'spec_helper'

describe 'time service' do
  it 'has two fields and a button' do
    visit root_path
    fill_in 'latitude', with: '41.882656'
    fill_in 'longitude', with: '-87.623304'
    click_button 'Submit'
  end
end