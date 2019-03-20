class ChangeIntegerToStringInUserTable < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :userid, :string
  end
end
