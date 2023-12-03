class AddColorToFrame < ActiveRecord::Migration[7.1]
  def change
    add_column :frames, :color, :string
  end
end
