class Mat < ApplicationRecord
  def label
    "#{outer} / #{inner}"
  end
end
