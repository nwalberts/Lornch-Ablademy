class CreateClinics < ActiveRecord::Migration[5.1]
  def change
    create_table :clinics do |t|
      t.string :speaker, null: false
      t.string :title, null: false
      t.string :description
    end
  end
end
