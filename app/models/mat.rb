class Mat < ApplicationRecord
  def label
    p 'label called'
    "#{outer} / #{inner}"
  end
end
