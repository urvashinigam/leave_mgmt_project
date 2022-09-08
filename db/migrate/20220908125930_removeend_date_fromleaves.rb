class RemoveendDateFromleaves < ActiveRecord::Migration[7.0]
  def change
    remove_column :leaves, :starting_date, :string
    remove_column :leaves, :end_date, :string
    add_column :leaves, :starting_date, :date
    add_column :leaves, :end_date, :date

  end
end
