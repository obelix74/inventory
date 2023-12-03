class AddMatCostToPrints < ActiveRecord::Migration[7.1]
  def change
    add_column :prints, :matCost, :decimal
  end
end
