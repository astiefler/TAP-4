class CreateBloodTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :blood_types do |t|
      t.string :blood_type_desc

      t.timestamps
    end
  end
end
