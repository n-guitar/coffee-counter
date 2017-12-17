require 'rails_helper'

RSpec.describe Drink, type: :model do
#  pending "add some examples to (or delete) #{__FILE__}"
  it "メニューの名前があるときに成功すること" do
    drink = Drink.new
    drink.menu = "エスプレッソ"
    expect(drink.save).to be_truthy 
  end
  it "メニューの名前が空白の時にエラーがでること" do
    drink = Drink.new
    drink.menu = nil
    expect(drink.save).to be_falsey 
  end

  it "同じ名前のメニューは登録できないこと" do
    Drink.create(menu: "エスプレッソ")
    drink = Drink.new
    drink.menu = "エスプレッソ"
    expect(drink.save).to be_falsey 
  end
end
