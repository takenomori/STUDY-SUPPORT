require 'rails_helper'

RSpec.describe User, type: :model do

    it "名前とメールアドレスとパスワードがあれば登録できる"
  
    it "名前がなければ登録できない"
  
    it "メールアドレスがなければ登録できない"
  
    it "メールアドレスが重複していたら登録できない"
  
    it "パスワードがなければ登録できない"
  
    it "パスワードが暗号化されているか"

  
  end