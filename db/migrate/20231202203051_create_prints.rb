class CreatePrints < ActiveRecord::Migration[7.1]
  def change
    create_table :prints do |t|

      t.timestamps
    end
  end
end
