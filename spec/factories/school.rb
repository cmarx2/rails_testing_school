FactoryBot.define do
  factory :school, class: School do
    name { "DPL" }
    address { "123 Main Street" }
    principal { "Harry Winston"}
    capacity { "1000" }
    private_school { true }
  end
end
