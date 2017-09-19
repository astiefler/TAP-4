class Client < ApplicationRecord

  belongs_to :age_range
  belongs_to :zodiac
  belongs_to :blood_type
  belongs_to :state
  belongs_to :country
  belongs_to :gender

  before_save :calc_premium, on: [ :create, :update ]

  def calc_premium

    query = Probability.find_by_sql(['SELECT DISTINCT probability FROM probabilities INNER JOIN clients ON clients.age_range_id
           = probabilities.age_range_id AND clients.gender_id = probabilities.gender_id AND clients.state_id = probabilities.state_id WHERE clients.state_id =1 AND clients.age_range_id = 5 AND clients.gender_id = 2'])

      q2 = Probability.where(state_id: state_id, age_range_id: age_range_id, gender_id: gender_id).pluck(:probability)
        q3 = q2[0]
    self.premium = (q3 * 1000) * 1.12


  end


end
