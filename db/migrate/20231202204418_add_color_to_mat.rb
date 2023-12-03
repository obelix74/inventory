class AddColorToMat < ActiveRecord::Migration[7.1]
  def change
    add_column :mats, :color, :string
  end
end
