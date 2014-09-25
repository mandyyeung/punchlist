class AddTradeToSubcontractors < ActiveRecord::Migration
  def change
    add_column :subcontractors, :trade, :string
  end
end
