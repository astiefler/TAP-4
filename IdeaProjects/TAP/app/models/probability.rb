class Probability < ApplicationRecord
  belongs_to :gender
  belongs_to :age_range
  belongs_to :state

  require 'action_view'
  include ActionView::Helpers::NumberHelper


  before_save :calc_probability, on: :create

  def calc_probability
   number_to_percentage(self.probability = (death.to_d / population.to_d) * 100, precision: 0)

  end

end
