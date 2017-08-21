class CreateProbabilities < ActiveRecord::Migration[5.0]
  def change
    create_table :probabilities do |t|
      t.integer :state_id
      t.integer :age_range_id
      t.integer :gender_id
      t.integer :population
      t.integer :death
      t.decimal :probability

      t.timestamps
    end
  end
end
