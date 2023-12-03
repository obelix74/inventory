class AddGalleryColorToPhotos < ActiveRecord::Migration[7.1]
  def change
    add_column :photos, :gallery, :string
    add_column :photos, :color, :string
  end
end
