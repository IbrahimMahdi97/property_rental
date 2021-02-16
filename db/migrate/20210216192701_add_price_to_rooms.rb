class AddPriceToRooms < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :price, :decimal, :precision => 8, :scale => 2
  end
end
