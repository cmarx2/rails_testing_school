FactoryBot.define do
  factory :robot, class: School do
    name { "DPL" }
    address { "123 Main Street" }
    principal { "Harry Winston"}
    capactiy { "1000" }
    private_school { true }
  end
end
