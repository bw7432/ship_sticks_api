FactoryBot.define do
  factory :product do
    name { "MyString" }
    type_of { 1 }
    length { 1 }
    width { 1 }
    height { 1 }
    weight { 1 }
  end
end
