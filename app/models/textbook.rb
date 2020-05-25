class Textbook < ApplicationRecord
    belongs_to :user
    has_many :textbook_tags
    
    enum status:{
        later: 1,
        doing: 2,
        done: 3,
    }

    with_options presence: true do |t|
        t.validates :user_id
        t.validates :textbook_tag_id
        t.validates :title
        t.validates :image
        t.validates :status
        t.validates :note
    end
end
