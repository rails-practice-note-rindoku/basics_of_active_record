class Book < ApplicationRecord
  #belongs_to :author, class_name: "User"
  belongs_to :author, class_name: "User", inverse_of: :books
end
