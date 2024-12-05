class CreateDeliveryDetails < ActiveRecord::Migration[8.0]
  def change
    create_table :delivery_details do |t|
      t.references :product, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.date :delivery_date

      t.timestamps
    end
  end
end
