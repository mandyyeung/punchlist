class CreateSubcontractors < ActiveRecord::Migration
  def change
    create_table :subcontractors do |t|
      t.string :name
      t.string :bp
      t.string :group

      t.timestamps
    end
  end
end
