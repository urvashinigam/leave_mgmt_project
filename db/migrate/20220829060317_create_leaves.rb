class CreateLeaves < ActiveRecord::Migration[7.0]
  def change
    create_table :leaves do |t|
      t.integer :sl
      t.integer :cl
      t.string :hl
      t.string :leave_discription
      t.date :starting_date
      t.date :end_date

      t.timestamps
    end
  end
end
