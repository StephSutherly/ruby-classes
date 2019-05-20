require('minitest/autorun')
require('minitest/rg')
require_relative('../PartA_CCStudent.rb')

class TestCodeClanStudent  < MiniTest::Test

  def test_student_name
    student = CodeClanStudent.new("StephScully", "E31")
    assert_equal("StephScully", student.name)
  end

  def test_cohort
    student = CodeClanStudent.new("JohnPatrick", "E30")
    assert_equal("E30", student.cohort)
  end

  def test_set_student_name
    student = CodeClanStudent.new("StephScully", "E31")
    student.set_student_name("Scully")
    assert_equal("Scully", student.name)
  end

  def test_set_cohort
    student = CodeClanStudent.new("JohnPatrick", "E30")
    student.set_cohort("E31")
    assert_equal("E31", student.cohort)
  end

  def test_student_can_talk
    student = CodeClanStudent.new("StephScully", "E31")
    assert_equal("I can talk", student.student_can_talk)
  end

  def test_fave_prog_language
    student = CodeClanStudent.new("StephScully", "E31")
    assert_equal("I love Ruby", student.fave_prog_language("Ruby"))
  end

# For this part we want you to make a class that represents a CodeClan student.
#
# Create a class called Student that takes in a name (String) and a cohort (string - e.g "E18", "G6", etc) when an new instance is created. ////
# Create a couple of Getter methods, one that returns the name property and one that returns the cohort property of the student.////
# Add in Setter methods to update the students name and what cohort they are in.////
# Create a method that gets the student to talk (eg. Returns "I can talk!). ////
# Create a method that takes in a students favourite programming language and returns it as part of a string (eg. student1.say_favourite_language("Ruby") -> "I love Ruby").

end
