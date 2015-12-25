class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :user, index: true, foreign_key: true, null: false
      t.references :shipping_address, index: true, foreign_key: true, null: false
      t.references :billing_address, index: true, foreign_key: true, null: false
      t.references :credit_card, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
