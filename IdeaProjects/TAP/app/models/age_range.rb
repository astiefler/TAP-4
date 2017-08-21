class AgeRange < ApplicationRecord
  has_many :clients
  has_many :probabilities
  def to_s

    age_range_code
  end
end
