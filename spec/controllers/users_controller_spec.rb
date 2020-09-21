require 'rails_helper'

RSpec.describe User, type: :model do
  it '名前first_nameがなければ登録できない' do
    expect(FactoryBot.build(:user, first_name: '')).to_not be_valid
  end
  
  it '名前last_nameがなければ登録できない' do
    expect(FactoryBot.build(:user, last_name: '')).to_not be_valid
  end

  it '名前kana_first_nameがなければ登録できない' do
    expect(FactoryBot.build(:user, kana_first_name: '')).to_not be_valid
  end

  it '名前kana_last_nameがなければ登録できない' do
    expect(FactoryBot.build(:user, kana_last_name: '')).to_not be_valid
  end

  it 'メールアドレスがなければ登録できない' do
    expect(FactoryBot.build(:user, email: '')).to_not be_valid
  end

  it 'パスワードがなければ登録できない' do
    expect(FactoryBot.build(:user, password: '')).to_not be_valid
  end
end