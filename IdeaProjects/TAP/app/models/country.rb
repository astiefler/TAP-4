class Country < ApplicationRecord
  has_many :states
  has_many :Clients

  def to_s
    country_name
  end
end
