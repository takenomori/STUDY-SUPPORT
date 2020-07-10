# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Faker日本語設定z
Faker::Config.locale = :ja

# level_setting とりあえず10年✖️365日✖️24時間
[
  %w[2 2], %w[3 4], %w[4 8], %w[5 16], %w[6 32], %w[7 64], %w[8 128], %w[9 256], %w[10 512], %w[11 1024], %w[12 2028], %w[13 4056], %w[14 8112], %w[15 16224], %w[16 32448], %w[17 64896], %w[18 129792]
].each do |level, thresold|
  LevelSetting.create!(
    { level: level, thresold: thresold }
  )
end

# テストユーザー1
User.create!(
  last_name: '支援',
  first_name: '勉強',
  kana_first_name: 'シエン',
  kana_last_name: 'ベンキョウ',
  email: 'guest@mail.com',
  password: 'password',
  password_confirmation: 'password'
)

# 100.times do |n|
#     TextBook.create!(
#         user_id: 1,
#         textbook_tag_id: ,
#         title: ,
#         status: ,
#         note: ,
#     )
# end

# 昨年から２年分の学習時間記録
(1..730).each do |i|
  StudyTime.create!(
    user_id: 1,
    time: Random.rand(1..11),
    comment: 'コメントコメントコメントコメントコメントコメントコメントコメントコメントコメントコメントコメントコメントコメントコメントコメントコメント',
    created_at: Time.current.prev_year + i * 3600 * 24
  )
end

# ランダムユーザー
last_names = %W[\u4F50\u85E4 \u9234\u6728 \u9AD8\u6A4B \u7530\u4E2D \u4F0A\u85E4 \u5C71\u672C \u6E21\u8FBA \u4E2D\u6751 \u5C0F\u6797 \u52A0\u85E4 \u5409\u7530 \u5C71\u7530 \u4F50\u3005\u6728 \u5C71\u53E3 \u677E\u672C \u4E95\u4E0A \u6728\u6751 \u6797 \u658E\u85E4 \u6E05\u6C34 \u5C71\u5D0E \u963F\u90E8 \u68EE \u6C60\u7530 \u6A4B\u672C \u5C71\u4E0B \u77F3\u5DDD \u4E2D\u5CF6 \u524D\u7530 \u85E4\u7530 \u5F8C\u85E4 \u5C0F\u5DDD \u5CA1\u7530 \u6751\u4E0A \u9577\u8C37\u5DDD \u8FD1\u85E4 \u77F3\u4E95 \u6589\u85E4 \u5742\u672C \u9060\u85E4 \u85E4\u4E95 \u9752\u6728 \u798F\u7530 \u4E09\u6D66 \u897F\u6751 \u85E4\u539F \u592A\u7530 \u677E\u7530 \u539F\u7530 \u5CA1\u672C \u4E2D\u91CE \u4E2D\u5DDD \u5C0F\u91CE \u7530\u6751 \u7AF9\u5185 \u91D1\u5B50 \u4E2D\u5C71 \u548C\u7530 \u77F3\u7530 \u5DE5\u85E4 \u4E0A\u7530 \u539F \u68EE\u7530 \u9152\u4E95 \u6A2A\u5C71 \u67F4\u7530 \u5BAE\u5D0E \u5BAE\u672C \u5185\u7530 \u9AD8\u6728 \u8C37\u53E3 \u5B89\u85E4 \u4E38\u5C71 \u4ECA\u4E95 \u5927\u91CE \u9AD8\u7530 \u83C5\u539F \u6CB3\u91CE \u6B66\u7530 \u85E4\u672C \u4E0A\u91CE \u6749\u5C71 \u5343\u8449 \u6751\u7530 \u5897\u7530 \u5C0F\u5CF6 \u5C0F\u5C71 \u5927\u585A \u5E73\u91CE \u4E45\u4FDD \u6E21\u90E8 \u677E\u4E95 \u83CA\u5730 \u5CA9\u5D0E \u677E\u5C3E \u4F50\u91CE \u6728\u4E0B \u91CE\u53E3 \u91CE\u6751 \u65B0\u4E95 \u7530\u53E3 \u76DB\u5408]
first_names = %W[\u7FD4\u592A \u84EE \u7FD4 \u9678 \u98AF\u592A \u60A0\u6597 \u5927\u7FD4 \u7FFC \u6A39 \u594F\u592A \u5927\u548C \u5927\u8F1D \u60A0 \u96BC\u4EBA \u5065\u592A \u5927\u8F14 \u99FF \u967D\u6597 \u512A \u967D \u60A0\u4EBA \u8AA0 \u62D3\u6D77 \u4EC1 \u60A0\u592A \u60A0\u771F \u5927\u5730 \u5065 \u907C \u5927\u6A39 \u8AD2 \u97FF \u592A\u4E00 \u4E00\u90CE \u512A\u6597 \u4EAE \u6D77\u6597 \u98AF \u4EAE\u592A \u5320 \u967D\u592A \u822A \u745B\u592A \u76F4\u6A39 \u7A7A \u5149 \u592A\u90CE \u8F1D \u4E00\u8F1D \u84BC \u8475 \u512A\u90A3 \u512A\u5948 \u51DB \u967D\u83DC \u611B \u7D50\u8863 \u7F8E\u54B2 \u6953 \u3055\u304F\u3089 \u9065 \u7F8E\u512A \u8389\u5B50 \u4E03\u6D77 \u7F8E\u6708 \u7D50\u83DC \u771F\u592E \u82B1\u97F3 \u967D\u5B50 \u821E \u7F8E\u7FBD \u512A\u8863 \u672A\u6765 \u5F69 \u5F69\u4E43 \u5F69\u82B1 \u512A \u667A\u5B50 \u5948\u3005 \u5343\u5C0B \u611B\u7F8E \u512A\u83DC \u674F \u88D5\u5B50 \u82BD\u8863 \u7DBE\u4E43 \u7434\u97F3 \u685C \u6075 \u674F\u5948 \u7F8E\u685C \u512A\u82B1 \u73B2\u5948 \u7D50 \u831C \u7F8E\u7A42 \u660E\u65E5\u9999 \u611B\u5B50 \u7F8E\u7DD2 \u78A7 \u60A0\u4ECB \u5E74\u7AE0 \u4E00\u5200]
kana_last_names = %W[\u30B5\u30C8\u30A6 \u30B9\u30BA\u30AD \u30BF\u30AB\u30CF\u30B7 \u30BF\u30CA\u30AB \u30A4\u30C8\u30A6 \u30E4\u30DE\u30E2\u30C8 \u30EF\u30BF\u30CA\u30D9 \u30CA\u30AB\u30E0\u30E9 \u30B3\u30D0\u30E4\u30B7 \u30AB\u30C8\u30A6 \u30E8\u30B7\u30C0 \u30E4\u30DE\u30C0 \u30B5\u30B5\u30AD \u30E4\u30DE\u30B0\u30C1 \u30DE\u30C4\u30E2\u30C8 \u30A4\u30CE\u30A6\u30A8 \u30AD\u30E0\u30E9 \u30CF\u30E4\u30B7 \u30B5\u30A4\u30C8\u30A6 \u30B7\u30DF\u30BA \u30E4\u30DE\u30B6\u30AD \u30A2\u30D9 \u30E2\u30EA \u30A4\u30B1\u30C0 \u30CF\u30B7\u30E2\u30C8 \u30E4\u30DE\u30B7\u30BF \u30A4\u30B7\u30AB\u30EF \u30CA\u30AB\u30B8\u30DE \u30DE\u30A8\u30C0 \u30D5\u30B8\u30BF \u30B4\u30C8\u30A6 \u30AA\u30AC\u30EF \u30AA\u30AB\u30C0 \u30E0\u30E9\u30AB\u30DF \u30CF\u30BB\u30AC\u30EF \u30B3\u30F3\u30C9\u30A6 \u30A4\u30B7\u30A4 \u30B5\u30A4\u30C8\u30A6 \u30B5\u30AB\u30E2\u30C8 \u30A8\u30F3\u30C9\u30A6 \u30D5\u30B8\u30A4 \u30A2\u30AA\u30AD \u30D5\u30AF\u30C0 \u30DF\u30A6\u30E9 \u30CB\u30B7\u30E0\u30E9 \u30D5\u30B8\u30EF\u30E9 \u30AA\u30AA\u30BF \u30DE\u30C4\u30C0 \u30CF\u30E9\u30C0 \u30AA\u30AB\u30E2\u30C8 \u30CA\u30AB\u30CE \u30CA\u30AB\u30AC\u30EF \u30AA\u30CE \u30BF\u30E0\u30E9 \u30BF\u30B1\u30A6\u30C1 \u30AB\u30CD\u30B3 \u30CA\u30AB\u30E4\u30DE \u30EF\u30C0 \u30A4\u30B7\u30C0 \u30AF\u30C9\u30A6 \u30A6\u30A8\u30C0 \u30CF\u30E9 \u30E2\u30EA\u30BF \u30B5\u30AB\u30A4 \u30E8\u30B3\u30E4\u30DE \u30B7\u30D0\u30BF \u30DF\u30E4\u30B6\u30AD \u30DF\u30E4\u30E2\u30C8 \u30A6\u30C1\u30C0 \u30BF\u30AB\u30AE \u30BF\u30CB\u30B0\u30C1 \u30A2\u30F3\u30C9\u30A6 \u30DE\u30EB\u30E4\u30DE \u30A4\u30DE\u30A4 \u30AA\u30AA\u30CE \u30BF\u30AB\u30C0 \u30B9\u30AC\u30EF\u30E9 \u30B3\u30A6\u30CE \u30BF\u30B1\u30C0 \u30D5\u30B8\u30E2\u30C8 \u30A6\u30A8\u30CE \u30B9\u30AE\u30E4\u30DE \u30C1\u30D0 \u30E0\u30E9\u30BF \u30DE\u30B9\u30C0 \u30B3\u30B8\u30DE \u30B3\u30E4\u30DE \u30AA\u30AA\u30C4\u30AB \u30D2\u30E9\u30CE \u30AF\u30DC \u30EF\u30BF\u30CA\u30D9 \u30DE\u30C4\u30A4 \u30AD\u30AF\u30C1 \u30A4\u30EF\u30B5\u30AD \u30DE\u30C4\u30AA \u30B5\u30CE \u30AD\u30CE\u30B7\u30BF \u30CE\u30B0\u30C1 \u30CE\u30E0\u30E9 \u30A2\u30E9\u30A4 \u30BF\u30B0\u30C1 \u30E2\u30EA\u30A2\u30A4]
kana_first_names = %W[\u30B7\u30E7\u30A6\u30BF \u30EC\u30F3 \u30B7\u30E7\u30A6 \u30EA\u30AF \u30BD\u30A6\u30BF \u30E6\u30A6\u30C8 \u30D2\u30ED\u30C8 \u30C4\u30D0\u30B5 \u30A4\u30C4\u30AD \u30BD\u30A6\u30BF \u30E4\u30DE\u30C8 \u30C0\u30A4\u30AD \u30E6\u30A6 \u30CF\u30E4\u30C8 \u30B1\u30F3\u30BF \u30C0\u30A4\u30B9\u30B1 \u30B7\u30E5\u30F3 \u30CF\u30EB\u30C8 \u30E6\u30A6 \u30E8\u30A6 \u30E6\u30A6\u30C8 \u30DE\u30B3\u30C8 \u30BF\u30AF\u30DF \u30B8\u30F3 \u30E6\u30A6\u30BF \u30E6\u30A6\u30DE \u30C0\u30A4\u30C1 \u30BF\u30B1\u30EB \u30EA\u30E7\u30A6 \u30C0\u30A4\u30AD \u30EA\u30E7\u30A6 \u30D2\u30D3\u30AD \u30BF\u30A4\u30C1 \u30A4\u30C1\u30ED\u30A6 \u30E6\u30A6\u30C8 \u30EA\u30E7\u30A6 \u30AB\u30A4\u30C8 \u30AB\u30A8\u30C7 \u30EA\u30E7\u30A6\u30BF \u30BF\u30AF\u30DF \u30E8\u30A6\u30BF \u30EF\u30BF\u30EB \u30A8\u30A4\u30BF \u30CA\u30AA\u30AD \u30BD\u30E9 \u30D2\u30AB\u30EA \u30BF\u30ED\u30A6 \u30A2\u30AD\u30E9 \u30AB\u30BA\u30AD \u30A2\u30AA\u30A4 \u30A2\u30AA\u30A4 \u30E6\u30A6\u30CA \u30E6\u30A6\u30CA \u30EA\u30F3 \u30CF\u30EB\u30CA \u30A2\u30A4 \u30E6\u30A4 \u30DF\u30B5\u30AD \u30AB\u30A8\u30C7 \u30B5\u30AF\u30E9 \u30CF\u30EB\u30AB \u30DF\u30E6\u30A6 \u30EA\u30B3 \u30CA\u30CA\u30DF \u30DF\u30C5\u30AD \u30E6\u30CA \u30DE\u30AA \u30AB\u30CE\u30F3 \u30E8\u30A6\u30B3 \u30DE\u30A4 \u30DF\u30A6 \u30E6\u30A4 \u30DF\u30AF \u30A2\u30E4 \u30A2\u30E4\u30CE \u30A2\u30E4\u30AB \u30E6\u30A6 \u30C8\u30E2\u30B3 \u30CA\u30CA \u30C1\u30D2\u30ED \u30DE\u30CA\u30DF \u30E6\u30A6\u30CA \u30A2\u30F3 \u30E6\u30A6\u30B3 \u30E1\u30A4 \u30A2\u30E4\u30CE \u30B3\u30C8\u30CD \u30B5\u30AF\u30E9 \u30E1\u30B0\u30DF \u30A2\u30F3\u30CA \u30DF\u30A6 \u30E6\u30A6\u30AB \u30EC\u30CA \u30E6\u30A4 \u30A2\u30AB\u30CD \u30DF\u30DB \u30A2\u30B9\u30AB \u30A2\u30A4\u30B3 \u30DF\u30AA \u30DF\u30C9\u30EA \u30E6\u30A6\u30B9\u30B1 \u30C8\u30B7\u30A2\u30AD \u30AB\u30BA\u30EF\u30AD]

50.times do |_n|
  first_name_random = rand(first_names.length)
  last_name_random = rand(last_names.length)
  first_name = first_names[first_name_random]
  last_name = last_names[last_name_random]
  kana_first_name = kana_first_names[first_name_random]
  kana_last_name = kana_last_names[last_name_random]
  email = Faker::Internet.email(domain: 'example')

  user = User.create!(
    first_name: first_name,
    last_name: last_name,
    kana_first_name: kana_first_name,
    kana_last_name: kana_last_name,
    email: email,
    password: 'password',
    password_confirmation: 'password'
  )
end
