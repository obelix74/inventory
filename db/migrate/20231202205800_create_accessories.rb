class CreateAccessories < ActiveRecord::Migration[7.1]
  def change
    create_table :accessories do |t|
      t.string :name
      t.integer :count
      t.decimal :cost

      t.timestamps
    end
  end
end
