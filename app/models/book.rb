class Book < ApplicationRecord
  belongs_to :user
  self.ignored_columns = [:memo]
end
