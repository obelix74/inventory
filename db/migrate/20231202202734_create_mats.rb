class CreateMats < ActiveRecord::Migration[7.1]
  def change
    create_table :mats do |t|
      t.string :outer
      t.string :inner

      t.timestamps
    end
  end
end
