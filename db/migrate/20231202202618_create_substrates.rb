class CreateSubstrates < ActiveRecord::Migration[7.1]
  def change
    create_table :substrates do |t|
      t.string :name
      t.string :subtype

      t.timestamps
    end
  end
end
