FactoryBot.define do
  factory :student, class: Student do
    name { "Bob" }
    student_number { 1234 }
    gpa { 4.0 }
    school
  end
end