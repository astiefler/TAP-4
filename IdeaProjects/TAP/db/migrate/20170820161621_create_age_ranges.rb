class CreateAgeRanges < ActiveRecord::Migration[5.0]
  def change
    create_table :age_ranges do |t|
      t.string :age_range_code

      t.timestamps
    end
  end
end
