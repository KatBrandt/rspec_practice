require 'rspec'
require './lib/student'

describe Student do
  describe '#initialize' do
    it 'is an instance of student' do
      student = Student.new('Bob')
      expect(student).to be_a Student
    end
  end
end
