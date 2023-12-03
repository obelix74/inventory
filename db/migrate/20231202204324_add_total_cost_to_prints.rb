class AddTotalCostToPrints < ActiveRecord::Migration[7.1]
  def change
    add_column :prints, :totalCost, :decimal
  end
end
