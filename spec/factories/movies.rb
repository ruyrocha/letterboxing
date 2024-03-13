FactoryBot.define do
  factory :movie do
    name { "MyString" }
    date { 1 }
    tagline { "MyString" }
    description { "MyText" }
    duration { 1 }
    rating { 1.5 }
  end
end
