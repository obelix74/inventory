class AddCostToPrints < ActiveRecord::Migration[7.1]
  def change
    add_column :prints, :cost, :decimal
  end
end
