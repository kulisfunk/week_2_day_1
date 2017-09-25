class Student
  def initialize(student_name, student_cohort)
    @name = student_name
    @cohort = student_cohort
  end

  def student_name()
    return @name
  end

  def student_cohort()
    return @cohort
  end

  def student_name_change(new_name)
    @name = new_name
  end

  def student_cohort_change(new_cohort)
    @cohort = new_cohort
  end

  def student_talk()
    return "I can talk!"
  end

  def student_fave_language(language)
    return "I love #{language}"
  end
end
