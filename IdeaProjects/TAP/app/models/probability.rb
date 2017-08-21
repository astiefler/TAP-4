class Probability < ApplicationRecord
  belongs_to :gender
  belongs_to :age_range
  belongs_to :state

  before_save :calc_probability, on: :create

  def calc_probability
   pr =  self.probability = (death.to_d / population.to_d) * 100

  end

end
