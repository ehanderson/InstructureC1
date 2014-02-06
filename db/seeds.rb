# Student.create(name: "Emily")
# Student.create(name: "Wes")
# Student.create(name: "Dain")
# Student.create(name: "John")
# Student.create(name: "Betsy")

# Assignment.create(name: "math")
# Assignment.create(name: "writing")
# Assignment.create(name: "reading")


kids = Student.all
assignments = Assignment.all
kids.each do |kid|
  assignments.each do |assignment|
    Submission.create(student_id: kid.id,
                      assignment_id: assignment.id,
                      grade: rand(70..100))
  end
end
