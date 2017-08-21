class Client < ApplicationRecord

  belongs_to :age_range
  belongs_to :zodiac
  belongs_to :blood_type
  belongs_to :state
  belongs_to :country
  belongs_to :gender
end
