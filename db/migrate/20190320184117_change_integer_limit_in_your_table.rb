class ChangeIntegerLimitInYourTable < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :userid, :integer, limit: 8
  end
end
