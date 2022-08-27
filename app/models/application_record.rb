class ApplicationRecord < ActiveRecord::Base
   primary_abstract_class
  # self.inheritance_column = 'kind_of_user'
end
