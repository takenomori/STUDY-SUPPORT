class Textbook < ApplicationRecord
    belongs_to :user
    has_many :textbook_tags
    
    attachment :image

		enum status: %w(後で 使用中 済み)

    with_options presence: true do |t|
        # t.validates :user_id
        # t.validates :textbook_tag_id
        t.validates :title
        # t.validates :image
        t.validates :status
        t.validates :note
    end
end
