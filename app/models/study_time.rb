class StudyTime < ApplicationRecord
    belongs_to :user

    with_options presence: true do |st|
        st.validates :user_id
        st.validates :day
        st.validates :time
        # st.validates :genre
        st.validates :comment
    end

end
