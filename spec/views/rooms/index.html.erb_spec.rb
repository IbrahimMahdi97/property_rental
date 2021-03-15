require 'rails_helper'

RSpec.describe "rooms/index", type: :view do
  before(:each) do
    assign(:rooms, [
      Room.create!(title: "Bedroom 4A", address_line1: "NY"),
      Room.create!(title: "Bedroom 2B", address_line1: "CA")
    ])
  end

  it "renders a list of rooms" do
    render
  end
end
