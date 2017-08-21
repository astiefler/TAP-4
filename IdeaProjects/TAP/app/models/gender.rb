class Gender < ApplicationRecord
  has_many :clients
  has_many :probabilities
  def to_s

    gender_desc
  end
end
