class TextbookTag < ApplicationRecord
    belongs_to :textbooks

    with_options presence: true do |t|
        t.validates :title
    end
end
