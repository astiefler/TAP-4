class BloodType < ApplicationRecord
  has_many :Clients

  def to_s

    blood_type_desc
  end
end
