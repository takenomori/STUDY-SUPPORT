require 'rails_helper'

RSpec.describe User, type: :model do

  it "名前とメールアドレスとパスワードがあれば登録できる" do
    expect(FactoryBot.create(:user)).to be_valid
  end

  it "名前がなければ登録できない" do
  end
  
  it "メールアドレスがなければ登録できない" do
  end

  it "メールアドレスが重複していたら登録できない" do
  end

  it "パスワードがなければ登録できない" do
  end

  it "パスワードが暗号化されているか" do
  end
  
  end