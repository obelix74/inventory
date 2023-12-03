class AddSizeToPrints < ActiveRecord::Migration[7.1]
  def change
    add_reference :prints, :size, null: false, foreign_key: true
  end
end
