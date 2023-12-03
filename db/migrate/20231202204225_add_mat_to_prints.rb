class AddMatToPrints < ActiveRecord::Migration[7.1]
  def change
    add_reference :prints, :mat, null: true, foreign_key: true
  end
end
