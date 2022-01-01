require 'rspec'
require './lib/student'

describe Student do
  describe '#initialize' do
    it 'is an instance of student' do
      student = Student.new('Bob')
      expect(student).to be_a Student
    end

    it 'has a name' do
      student = Student.new('Bob')
      expect(student.name).to eq 'Bob'
    end

    it 'assigns a default name' do
      student = Student.new(42)
      expect(student.name).to eq "Default Name Assigned"
    end

    it 'has no cookies by default' do
      student = Student.new('Bob')
      expect(student.cookies).to eq []
    end
  end

  describe '#add_cookie' do
    it 'adds cookie to cookies array' do
      student = Student.new('Bob')
      student.add_cookie('Choc Chip')
      student.add_cookie('Snickerdoodle')
      cookies = ['Choc Chip', 'Snickerdoodle']

      expect(student.cookies).to eq(cookies)
    end
  end
end
