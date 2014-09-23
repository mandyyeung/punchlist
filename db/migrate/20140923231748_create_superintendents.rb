class CreateSuperintendents < ActiveRecord::Migration
  def change
    create_table :superintendents do |t|
      t.string :name

      t.timestamps
    end
  end
end
