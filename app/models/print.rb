class Print < ApplicationRecord
  belongs_to :photo
  belongs_to :substrate
  belongs_to :size
  belongs_to :frame, :optional => true
  belongs_to :mat, :optional => true

  def self.search(search_string, medium, size_id)
    if search_string && !search_string.empty?
      prints = Print.joins(:photo).where("photos.name like ?", "%#{search_string}%")
    else
      prints = Print.all
    end
    prints = prints.joins(:substrate).where("substrates.name = ?", medium) if (medium && !medium.empty?)
    prints = prints.joins(:size).where("sizes.id = ?", size_id) if (size_id && !size_id.empty?)
    prints.sort_by do |print|
      print.photo.name
    end
  end
end
