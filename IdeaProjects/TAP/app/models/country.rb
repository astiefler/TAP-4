class Country < ApplicationRecord
  has_many :states

  def to_s
    country_name
  end
end
