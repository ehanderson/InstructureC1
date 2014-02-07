  # Optimizing requires efficient thought process throughout the code
  # Speed often requires less dynamism, less large interations and
  # inquiries such as find_by and while loops.
  # To do this, associations must be set up properly
  # Includes prevents duplicate calls
get '/' do
  erb :index
end

get '/show' do
@assignments = Assignment.all
@students = Student.includes(:submissions, :assignments)
  #this prevents the view from making any calls to the database
erb :show
end

  # previously I was going from assignment to students to submissions,
  # this requires a find_by which took too much time. This route makes
  # more sense to get the same data

