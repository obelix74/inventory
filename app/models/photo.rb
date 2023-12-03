class Photo < ApplicationRecord
  def self.search(search)
    if search
      Photo.where("name LIKE ?", "%#{search}%").order('name ASC')
    else
      Photo.all.order('name ASC')
    end
  end
end
