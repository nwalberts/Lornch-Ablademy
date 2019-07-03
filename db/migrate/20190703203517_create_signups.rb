class CreateSignups < ActiveRecord::Migration[5.2]
  def change
    create_table :signups do |t|
      t.belongs_to :clinic, null: false
      t.belongs_to :student, null: false

      t.timestamps null: false
    end
  end
end
