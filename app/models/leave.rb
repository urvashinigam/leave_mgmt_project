class Leave < ApplicationRecord
  # self.table_name  "leaves"
  belongs_to :user
  enum leave_type: %w[sick causal]
  enum status: %w[pending approved rejected]
end
