class ChangeLeavesTypeToBeIntegerInLeaves < ActiveRecord::Migration[7.0]
  def change
    remove_column :leaves, :leaves_type, :string
    add_column :leaves, :leaves_type, :integer
  end
end
