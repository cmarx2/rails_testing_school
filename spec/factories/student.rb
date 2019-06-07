FactoryBot.define do
  factory :robot, class: Student do
    name { "Bob" }
    student_number { 1234 }
    gpa { 4.0 }
    school
  end
end