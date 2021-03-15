require 'rails_helper'
require 'spec_helper'

RSpec.describe Room, type: :model do
  feature "Add new Room" do
    it "has an address" do
      room = Room.new(
        title: "Bedroom 1A",
        address_line1: ""
      )
      expect(room).to_not be_valid
  
      room.address_line1 = "NY"
      expect(room).to be_valid
    end
  
    it "has a title" do
      room = Room.new(
        title: "",
        address_line1: "MI"
      )
      expect(room).to_not be_valid
  
      room.title = "Bedroom 3C"
      expect(room).to be_valid
    end
  end
end
