class CreateStates < ActiveRecord::Migration[5.0]
  def change
    create_table :states do |t|
      t.integer :country_id
      t.string :state_name
      t.string :state_abbv

      t.timestamps
    end
  end
end
