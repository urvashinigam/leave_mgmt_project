class Leave < ApplicationRecord
  # self.table_name  "leaves"
  belongs_to :user
  enum :status, [ :sick_leave, :casule_leave, :holidays ]
end
