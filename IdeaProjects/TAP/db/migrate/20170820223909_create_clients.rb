class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.integer :gender_id
      t.integer :blood_type_id
      t.integer :state_id
      t.integer :country_id
      t.integer :age_range_id
      t.integer :zodiac_id
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.float :weight
      t.string :height
      t.string :occupation
      t.decimal :premium

      t.timestamps
    end
  end
end
