FactoryBot.define do
  factory :comment do
    text {"text"}
    city_id {2}
    association :user
    association :post
  end
end