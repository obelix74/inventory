class AddSubstrateToPrints < ActiveRecord::Migration[7.1]
  def change
    add_reference :prints, :substrate, null: false, foreign_key: true
  end
end
