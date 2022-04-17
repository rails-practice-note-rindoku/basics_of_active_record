class Book < ApplicationRecord
  belongs_to :user
  #belongs_to :author, foreign_key: "user_id", class_name: "User"
  #belongs_to :author, foreign_key: "user_id", class_name: "User", inverse_of: :books
  composed_of :isbn,
              mapping: [:isbn, :value],
              converter: Proc.new { |arg| Isbn.new(arg) }

  scope :ruby, ->{ where(title: "Ruby") }
end
