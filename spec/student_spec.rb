require 'rspec'

describe Student do
  describe '#initialize' do
    it 'is an instance of student' do
      student = Student.new()
      expect(student).to be_a Student
    end
  end
end
