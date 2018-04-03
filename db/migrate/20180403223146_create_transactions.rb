class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.string :rolou_buyer
      t.string :rolou_seller
      t.references :user, foreign_key: true
      t.references :offer, foreign_key: true

      t.timestamps
    end
  end
end
