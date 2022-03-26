class User < ApplicationRecord
  #has_many :books, foreign_key: "author_id"
  has_many :books, foreign_key: "author_id", inverse_of: :author
end
