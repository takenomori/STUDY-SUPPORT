FactoryBot.define do
    factory :user do
        sequence(:first_name) { |n| "TEST_NAME#{n}"}
        sequence(:last_name) { |n| "TEST_NAME#{n}"}
        sequence(:kana_first_name) { |n| "TEST_NAME#{n}"}
        sequence(:kana_last_name) { |n| "TEST_NAME#{n}"}
    end
end