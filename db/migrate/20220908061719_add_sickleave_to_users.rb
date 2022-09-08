class AddSickleaveToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :sickleave, :integer,  :default => 5
    add_column :users, :casualleave, :integer, :default => 10
  end
end
