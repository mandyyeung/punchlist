class CreatePunchitems < ActiveRecord::Migration
  def change
    create_table :punchitems do |t|
      t.text :description
      t.date :completion_date
      t.date :approved_date
      t.string :owner
      t.string :reviewer

      t.timestamps
    end
  end
end
