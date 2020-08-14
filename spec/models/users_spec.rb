require 'rails_helper'

RSpec.describe User, type: :model do
    before do 
        @user = build(:user)
    end

    describe 'バリデーション' do
        it 'first_nameが空だとNG' do
            @user.first_name = ''
            expect(@user.valid?).to eq(false)
        end
        it 'last_nameが空だとNG' do
            @user.last_name = ''
            expect(@user.valid?).to eq(false)
        end
        it 'kana_first_nameが空だとNG' do
            @user.kana_first_name = ''
            expect(@user.valid?).to eq(false)
        end
        it 'kana_last_nameが空だとNG' do
            @user.kana_last_name = ''
            expect(@user.valid?).to eq(false)
        end
    end
end
