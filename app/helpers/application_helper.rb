module ApplicationHelper
  def get_assignment_grade(student)
    student.assignments.each do |assign|
      student.submissions.find {|s| s.assignment_id == assign.id}.try(:grade)
    end

  end

end
