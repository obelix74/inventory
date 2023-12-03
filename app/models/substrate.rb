class Substrate < ApplicationRecord
  def label
    if subtype.empty?
      name
    else
      "#{name} (#{subtype})"
    end
  end
end
