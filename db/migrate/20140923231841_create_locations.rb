class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :building
      t.string :room_num
      t.string :room_name
      t.string :floor
      t.string :part

      t.timestamps
    end
  end
end
