class Calender < ApplicationRecord
    belongs_to :user

    with_options presence: true do |t|
        t.validates :user_id
        t.validates :day
        t.validates :time
        t.validates :title
        t.validates :plan
    end

end
