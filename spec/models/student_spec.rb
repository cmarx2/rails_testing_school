require 'rails_helper'

RSpec.describe Student, type: :model do
  before(:each) do
    @student = FactoryBot.create
    @school = FactoryBot.create
  end

  describe 'attributes' do
    it {should respond_to :name}
    it {should respond_to :student_number}
    it {should respond_to :gpa}
#     it 'has a name' do
#       expect(@student.name).to eq('Bob')
#     end

#     it 'has a studnet number' do
#       student_number = 123456
#       student = Student.create(student_number: student_number)
#       expect(student.student_number).to eq(student_number)
#     end

#     it 'has a gpa' do
#       gpa = 3.9
#       student = Student.create(gpa: gpa)
#       expect(student.gpa).to eq(gpa)
#     end
end 

describe "vaildations" do
  it { should validate_presence_of :name }
  it { should validate_presence_of :student_number }
  it { should validate_presence_of :gpa }
  it { should validate_uniqueness_of :name }

  it 'has a capacity lower bound' do
    should validate_numericality_of(:student_number).
    is_greater_than_or_equal_to(0)
  end

  it 'as a capcaity higer bound' do
    should validate_numericality_of(:student_number).
    is_less_than_or_equal_to(10000)
  end
end

describe "association" do
  it { should belong_to(:school) }
end

describe "uniqueness" do
  Student.create!(name: 'foo',  student_number: 123, gpa: 4.0)
  subject { Student.new(name: 'foo', student_number: 123, gpa: 4.0) }
  it { should validate_uniqueness_of(:name) }
end

describe "numericality" do
  before(:each) do
    @student = Student.create(name: 'foo', student_number: 123, gpa: 4.0)
  end  
   it { should validate_numericality_of(:student_number) }
  end 
end