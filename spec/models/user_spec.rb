require 'rails_helper'

RSpec.describe User, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  it "ユーザーが作成できること" do
    user = User.new
    user.name = "hogehoge"
    user.mail = "hogehoge@example.com"
    expect(user.save).to be_truthy 
  end
  it "ユーザー登録時にdisabled=falseとなること" do
    user = User.new
    user.name = "hogehoge"
    user.mail = "hogehoge@example.com"
    user.save
    expect(User.find_by(name: "hogehoge").disabled).to be_falsey
  end
  it "nameがないときにエラーを返すこと" do
    user = User.new
    user.name = nil
    user.mail = "hogehoge@example.com"
    expect(user.save).to be_falsey
  end
  it "重複する名前は登録できないこと" do
    User.create(name: "hogehoge", mail: "hoge@example.com")
    user = User.new
    user.name = "hogehoge"
    expect(user.save).to be_falsey
  end
  it "ユーザー削除時に対応するDrinkCountを削除できること" do
    user = User.create(name: "hogehoge", mail: "hoge@example.com")
    DrinkCount.create(cnt: "true", drink_id: 1, user_id: user.id)
    user.destroy
    expect(DrinkCount.where(user_id: user.id).count).to eq 0
  end
end
