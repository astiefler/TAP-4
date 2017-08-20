class State < ApplicationRecord
  belongs_to :country

  def to_s

    state_name
  end
end
