class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :textbooks
  has_many :study_times
  has_many :calenders
  has_many :tset_formats
  has_many :test_dates

  with_options presence: true do |u|
    u.validates :first_name
    u.validates :last_name
    u.validates :kana_first_name
    u.validates :kana_last_name
  end

end
