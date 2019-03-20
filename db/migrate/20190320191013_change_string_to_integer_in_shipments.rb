class ChangeStringToIntegerInShipments < ActiveRecord::Migration[5.1]
  def change
    change_column :shipments, :receiver_id, :integer
  end
end
