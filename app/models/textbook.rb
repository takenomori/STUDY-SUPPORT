class Textbook < ApplicationRecord
    belongs_to :user
    has_many :textbook_tags
    
	enum status: %w(学習予定 使用中 学習済み)

    with_options presence: true do |t|
        # t.validates :user_id
        # t.validates :textbook_tag_id
        t.validates :title
        t.validates :status
        # t.validates :note
    end
end
