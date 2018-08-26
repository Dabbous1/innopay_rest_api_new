class CreateSenders < ActiveRecord::Migration[5.2]
  def change
    create_table :senders do |t|
      t.string :userid
      t.string :name
      t.string :email
      t.string :photourl
      t.references :address, foreign_key: true

      t.timestamps
    end
  end
end
