class AddLongitudeLatitudeToRooms < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :longitude, :decimal, :precision => 12, :scale => 8
    add_column :rooms, :latitude, :decimal, :precision => 12, :scale => 8
  end
end
