FactoryBot.define do
  factory :booking_type do
    name { 'MyString' }
    location { 'MyString' }
    description { nil }
    color { 'MyString' }
    duration { 1 }
    payemnt_required { false }
    price { 1 }
    user { nil }
  end
end
