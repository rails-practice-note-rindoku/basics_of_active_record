class User < ApplicationRecord
  has_many :books
  #has_many :books, inverse_of: :author
end
