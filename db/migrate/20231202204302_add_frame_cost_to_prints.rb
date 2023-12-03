class AddFrameCostToPrints < ActiveRecord::Migration[7.1]
  def change
    add_column :prints, :frameCost, :decimal
  end
end
