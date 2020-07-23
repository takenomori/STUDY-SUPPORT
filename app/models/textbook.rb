class Textbook < ApplicationRecord
  belongs_to :user
  belongs_to :tag

  enum status: %w[学習予定 使用中 学習済み]

  # 画像投稿のrefile/gem
  attachment :book_image

  with_options presence: true do |t|
    # t.validates :user_id
    # t.validates :tag_id
    t.validates :title
    t.validates :status
    # t.validates :note
  end
end
