class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :title
      t.string :room_name
      t.string :room_type
      t.string :bathroom_type
      t.text :description
      t.float :location
      t.string :address_line1
      t.string :address_line2
      t.date :available_at

      t.timestamps
    end
  end
end
