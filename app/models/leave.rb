class Leave < ApplicationRecord
  validates :leave_discription, presence: true, length: { minimum: 10 }
  validates :status, presence: true
  # self.table_name  "leaves"
  belongs_to :user
  enum leaves_type: %w[sick causal]
   enum status: %w[pending approved rejected]
  # STATUSES = [:pending ,:approved, :rejected]
end
