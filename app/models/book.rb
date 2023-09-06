class Book < ApplicationRecord
  belongs_to :user
  #belongs_to :author, foreign_key: "user_id", class_name: "User"
  #belongs_to :author, foreign_key: "user_id", class_name: "User", inverse_of: :books

  has_many :novelties

  scope :ruby, ->{ where(title: "Ruby") }
end
