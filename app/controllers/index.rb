get '/' do
  assignments = Assignment.all

  assignments.each do |assign|
     p assign.name
  # Optimizing requires efficient thought process throughout the code
  # Speed often requires less dynamism, less large interations and
  # inquiries such as find_by and while loops.
  # To do this, associations must be set up properly
    assign.students.each do |student|
      p student.name
      student.submissions.each do |submission|
        p submission.grade
      end
    end
  end
# This is basic code that will print out an output in the console.
# This is not something the would display on a page obviously, it is just
# an efficient way to generated the data in the console.
  erb :index
end


