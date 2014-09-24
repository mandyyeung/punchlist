class CreatePunchitems < ActiveRecord::Migration
  def change
    create_table :punchitems do |t|
      t.text :description
      t.date :completion_date
      t.date :approved_date
      t.string :owner
      t.string :reviewer
      t.belongs_to :subcontractor
      t.belongs_to :superintendent
      t.belongs_to :engineer
      t.belongs_to :location

      t.timestamps
    end
  end
end
