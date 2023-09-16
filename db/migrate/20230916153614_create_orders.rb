class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :product_count
      t.string :delivery_status

      t.timestamps
    end
  end
end
