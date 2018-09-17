require('minitest/autorun')
require('minitest/rg')
require_relative('../student')

class TestStudent < MiniTest::Test

  def test_student_name
    student = Student.new("Caroline", "e25")
    assert_equal("Caroline", student.name)
  end


  def test_cohort
    student = Student.new("Caroline", "e25")
    assert_equal("e25", student.cohort)
  end


  def test_student_name_update
    student = Student.new("Chris", "e23")
    student.name="Kris"
    assert_equal("Kris", student.name)
  end

  def test_student_cohort_update
    student = Student.new("Chris", "e23")
    student.cohort="e25"
    assert_equal("e25", student.cohort)
  end

  def test_student_speaks
    student = Student.new("Kris", "e23")
    student.talks()
    assert_equal("I can talk", student.talks)
  end


  def test_student_speaks
    student = Student.new("Kris", "e23")
    result = student.speaks_fav_lang("Ruby")
    assert_equal("I love Ruby", result)
  end
end
