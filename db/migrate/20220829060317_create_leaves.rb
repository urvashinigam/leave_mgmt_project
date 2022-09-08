class CreateLeaves < ActiveRecord::Migration[7.0]
  def change
    create_table :leaves do |t|
      t.integer :status
      t.string :leaves_type
      t.string :leave_discription
      t.string :starting_date
      t.string :end_date
      t.belongs_to :user, foreign_key: true
      t.timestamps
    end
  end
end
