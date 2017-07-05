class CreateSignups < ActiveRecord::Migration[5.1]
  def change
    create_table :signups do |t|
      t.integer :clinic_id, null: false
      t.belongs_to :student, null: false
      t.timestamps
    end
  end
end
