class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :asker, null: false
      t.string :body, null: false
      t.belongs_to :clinic, null: false
      t.timestamps
    end
  end
end
