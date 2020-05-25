class TextbookTag < ApplicationRecord

    belongs_to :Textbook
    
    with_options presence: true do |tt|
        tt.validates :genre
    end

end
