FactoryBot.define do
  factory :post do
    title                 { 'テスト' }
    about                 { 'テストの説明' }
    day                   { '1993-12-01' }
    town                  { 2 }
    number                { 2 }
    building              { 2 }
    city_id               { 2 }
    association :user

    after(:build) do |post|
      post.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end