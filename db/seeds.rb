# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create(name: "スズキ", mail: "aaa@example.com")
user = User.create(name: "サトウ", mail: "bbb@example.com")
user = User.create(name: "タナカ", mail: "ccc@example.com")

Drink.create(menu: "エスプレッソ")
Drink.create(menu: "エスプレッソラージ")
Drink.create(menu: "ロングコーヒー")
Drink.create(menu: "ロングコーヒーラージ")
Drink.create(menu: "エスプレッソ ×2")
Drink.create(menu: "エスプレッソラージ ×2")
Drink.create(menu: "ロングコーヒー ×2")
Drink.create(menu: "ロングコーヒーラージ ×2")
Drink.create(menu: "カフェジャポーネ ×2")