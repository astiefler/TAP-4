class State < ApplicationRecord
  belongs_to :country
  has_many :clients
  has_many :probabilities

  def to_s

    state_name
  end
end
