class AddDefaultValueToStatus < ActiveRecord::Migration[7.0]
  def change
    change_column :leaves, :status, :integer, default: 0
  end
end
