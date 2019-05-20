class CodeClanStudent

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

#Getter Methods
  def name()
    return @name
  end

  def cohort()
    return @cohort
  end

#Setter Methods
  def set_student_name(new_name)
    @name = new_name
  end

  def set_cohort(new_cohort)
    @cohort = new_cohort
  end

#Method
  def student_can_talk
    return "I can talk"
  end

  def fave_prog_language(language)
    return "I love #{language}"
  end

end
