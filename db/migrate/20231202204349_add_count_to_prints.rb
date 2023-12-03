class AddCountToPrints < ActiveRecord::Migration[7.1]
  def change
    add_column :prints, :count, :integer
  end
end
