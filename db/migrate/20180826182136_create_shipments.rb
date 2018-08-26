class CreateShipments < ActiveRecord::Migration[5.2]
  def change
    create_table :shipments do |t|
      t.integer :tntcode
      t.string :status
      t.integer :weight
      t.string :content
      t.integer :price
      t.references :sender, foreign_key: true
      t.references :receiver, foreign_key: true

      t.timestamps
    end
  end
end
