class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :building
      t.string :room_num
      t.string :room_name
      t.string :level
      t.string :floor

      t.timestamps
    end
  end
end
