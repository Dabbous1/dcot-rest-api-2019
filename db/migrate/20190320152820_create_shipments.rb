class CreateShipments < ActiveRecord::Migration[5.1]
  def change
    create_table :shipments do |t|
      t.integer :tntcode
      t.string :status
      t.string :shipment_type
      t.integer :weight
      t.string :content
      t.integer :price
      t.integer :sender_id
      t.string :receiver_id

      t.timestamps
    end
  end
end
