class ChangeProbabilityToBeFloatInProbabilities < ActiveRecord::Migration[5.0]
  def change
    change_column :probabilities, :probability, :float
  end
end
