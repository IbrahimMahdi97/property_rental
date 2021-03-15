
require 'rails_helper'
require 'spec_helper'
require 'capybara/rspec'
RSpec.describe Room, type: :model do
  feature "Add new Room" do
    scenario 'with valid attributes' do
      new_room_with('address', 'title') do
        expect(room).to be_valid
      end
    end
  end
    # it "has an address" do
    #   room = Room.new(
    #     title: "Bedroom 1A",
    #     address_line1: ""
    #   )
    #   expect(room).to_not be_valid

    #   room.address_line1 = "NY"
    #   expect(room).to be_valid
    # end

    # it "has a title" do
    #   room = Room.new(
    #     title: "",
    #     address_line1: "MI"
    #   )
    #   expect(room).to_not be_valid

    #   room.title = "Bedroom 3C"
    #   expect(room).to be_valid
    # end

  def new_room_with(address, title)
    visit '/rooms/new'
    
    binding.pry
    
    fill_in "room[address_line1]",	with: "New York" 
    fill_in "room[title]",	with: "Beddrom 3C"
    click_button "Create Room"
  end
end
