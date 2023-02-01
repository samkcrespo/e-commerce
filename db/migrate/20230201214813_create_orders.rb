class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.text :address
      t.string :status
      t.text :invoice
      t.string :email
      t.string :name
      t.decimal :amount, precision: 6, scale: 2
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
