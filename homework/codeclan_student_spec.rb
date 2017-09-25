require("minitest/autorun")
require("minitest/rg")
require_relative("./codeclan_student")

class TestStudent < MiniTest::Test

  def test_student_name()
    student = Student.new("Martin", 3)
    assert_equal("Martin", student.student_name())
  end

  def test_student_cohort()
    student = Student.new("Martin", 3)
    assert_equal(3, student.student_cohort())
  end

  def test_student_name_change()
    student = Student.new("Martin", 3)
    student.student_name_change("Goofy")
    assert_equal("Goofy", student.student_name())
  end

  def test_student_cohort_change()
    student = Student.new("Martin", 3)
    student.student_cohort_change(5)
    assert_equal(5, student.student_cohort())
  end

  def test_student_talk()
    student = Student.new("Martin", 3)
    assert_equal("I can talk!", student.student_talk())
  end

  def test_student_fave_language()
    student = Student.new("Martin", 3)
    assert_equal("I love Ruby", student.student_fave_language("Ruby"))
  end

end
