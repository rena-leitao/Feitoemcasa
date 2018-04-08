class CreateOffers < ActiveRecord::Migration[5.1]
  def change
    create_table :offers do |t|
      t.string :title
      t.string :description
      t.string :photo
      t.string :address
      t.string :available
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
