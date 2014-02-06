  # Optimizing requires efficient thought process throughout the code
  # Speed often requires less dynamism, less large interations and
  # inquiries such as find_by and while loops.
  # To do this, associations must be set up properly
require 'benchmark'
get '/' do
  Benchmark.bm do |bm|
    bm.report do
      "Time is #{Time.now}"

      Assignment.includes(:submissions).each do |assign|

        # previously I was going from assignment to students to submissions,
        # this requires a find_by which took too much time. This route makes
        # more sense to get the same data
        assign.submissions.each do |submission|
         puts  submission.student.name
         puts submission.grade
        end
      end
      "Time is #{Time.now}"
    end
  end
  erb :index
end
# old: 2.93, 2.8, 2,84, 2.74
#new: 2.3, 2.4
# This is basic code that will print out an output in the console.
# This is not something the would display on a page obviously, it is just
# an efficient way to generated the data in the console.
