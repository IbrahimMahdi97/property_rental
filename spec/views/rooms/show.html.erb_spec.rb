require 'rails_helper'

RSpec.describe "rooms/show", type: :view do
  before(:each) do
    @room = assign(:room, Room.create!(title: "Bedroom 2B", address_line1: "CA"))
  end

  it "renders attributes in <p>" do
    render
  end
end
