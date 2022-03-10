class Book < ApplicationRecord
  belongs_to :user
  scope :ruby, ->{ where(title: "Ruby") }
end
