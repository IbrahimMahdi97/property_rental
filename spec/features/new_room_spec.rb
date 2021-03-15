
require 'rails_helper'
require 'spec_helper'
require 'capybara/rspec'
RSpec.describe Room, type: :model do
  feature "Add new Room" do
    scenario 'with valid attributes' do
      new_room_with('NY', 'Bedroom 2C') do
        expect(room).to be_valid
      end
    end

    scenario 'with in-valid attributes' do
      new_room_with('', '') do
        expect(room).to_not be_valid
      end
    end
  end
  
  def new_room_with(address, title)
    visit '/rooms/new'
    
    fill_in "room[address_line1]",	with: address
    fill_in "room[title]",	with: title
    click_button "Create Room"
  end
end
