class AddFrameToPrints < ActiveRecord::Migration[7.1]
  def change
    add_reference :prints, :frame, null: true, foreign_key: true
  end
end
