class School
  attr_reader :grades
  def initialize
    @grades = Hash.new { |h, k| h[k] = [] }
  end

  def add(student_name, grade_number)
    grades[grade_number] << student_name
  end

  def students(grade_number)
    grades[grade_number].sort
  end

  def students_by_grade
    @grades.each_with_object([]) do |(grade, student_names), output|
      output << { grade: grade, students: student_names.sort }
    end
      .sort_by { |h| h[:grade] }
  end
end

module BookKeeping
  VERSION = 3
end
