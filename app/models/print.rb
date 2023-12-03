class Print < ApplicationRecord
  belongs_to :photo
  belongs_to :substrate
  belongs_to :size
  belongs_to :frame, :optional => true
  belongs_to :mat, :optional =>  true
end
