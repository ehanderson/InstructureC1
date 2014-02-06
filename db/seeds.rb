
100.times{Student.create(name: Faker::Name.name)}
10.times{Assignment.create(name: Faker::Company.bs)}
kids = Student.all
assignments = Assignment.all
kids.each do |kid|
  assignments.each do |assignment|
    Submission.create(student_id: kid.id,
                      assignment_id: assignment.id,
                      grade: rand(70..100))
  end
end
