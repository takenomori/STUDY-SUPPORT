class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #画像投稿のrefile/gem
  attachment :image

  has_many :level_setting
  has_many :events
  has_many :textbooks
  has_many :study_times

  with_options presence: true do |u|
    u.validates :first_name
    u.validates :last_name
    u.validates :kana_first_name
    u.validates :kana_last_name
  end
end
