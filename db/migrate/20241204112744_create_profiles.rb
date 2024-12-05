class CreateProfiles < ActiveRecord::Migration[8.0]
  def change
    create_table :profiles do |t|
      t.references :user, null: true, foreign_key: true
      t.string :name
      t.string :contact_no
      t.integer :age
      t.string :gender

      t.timestamps
    end
  end
end
