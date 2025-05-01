# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Userモデルのシードデータを3件作成
User.create!([  
  { name: "igaiga" },
  { name: "uniuni" },
  { name: "ecoeco" }
])

# Bookモデルのシードデータを3件作成
Book.create!([  
  { title: "Ruby", user_id: 1, memo: "Memo1", price: 1000 },
  { title: "JavaScript", user_id: 2, memo: "Memo2", price: 2000 },
  { title: "Python", user_id: 3, memo: "Memo3", price: 3000 },
  { title: "Ruby", user_id: 2, memo: "Memo4", price: 4000 }
])

# Noveltyモデルのシードデータを3件作成
Novelty.create!([  
  { name: "postcard", book_id: 1 },
  { name: "sticker", book_id: 2 },
  { name: "keychain", book_id: 3 }
])

Package.create!([
  {code: "R7aFIgWDrNwNRFL0"},
  {code: "1234567890AAAAAA"},
  {code: "1234567890BBBBBB"}
])

puts "#{User.count}件のユーザーデータを作成しました。"
puts "#{Book.count}件の本データを作成しました。"
puts "#{Novelty.count}件のノベルティデータを作成しました。"
puts "#{Package.count}件のパッケージデータを作成しました。"
