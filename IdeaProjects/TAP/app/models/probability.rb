class Probability < ApplicationRecord
  belongs_to :gender
  belongs_to :age_range
  belongs_to :state
end
