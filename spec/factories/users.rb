FactoryBot.define do
  factory :user do
    nickname {'たろう'}
    email {Faker::Internet.free_email}
    password = Faker::Internet.password(min_length: 6)
    password {password}
    password_confirmation {password}
    birthday  {'1993-12-6'}
  end
end