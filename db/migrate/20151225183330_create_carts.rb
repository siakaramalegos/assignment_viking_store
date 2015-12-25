class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
