  # Optimizing requires efficient thought process throughout the code
  # Speed often requires less dynamism, less large interations and
  # inquiries such as find_by and while loops.
  # To do this, associations must be set up properly
get '/' do
  Assignment.includes(:submissions).each do |assign|
    p assign.name
    # previously I was going from assignment to students to submissions,
    # this requires a find_by which took too much time. This route makes
    # more sense to get the same data
    # I also considered indexing the data but due to the fact that the models
    # are fairly basic and the idea that we are printing out every record
    # in the database, I don't think it completely necessary here.
    assign.submissions.each do |submission|
      p submission.student.name
      p submission.grade
    end
  end
  erb :index
end

# This is basic code that will print out an output in the console.
# This is not something the would display on a page obviously, it is just
# an efficient way to generated the data in the console.
