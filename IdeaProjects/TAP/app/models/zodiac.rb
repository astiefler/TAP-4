class Zodiac < ApplicationRecord
  has_many :Clients

  def to_s

   zodiac_desc
  end
end
