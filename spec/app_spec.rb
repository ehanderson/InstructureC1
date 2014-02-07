require File.expand_path '../spec_helper.rb', __FILE__

describe Student do
  it "should allow return a student's grade per assignment" do
    last_response.should be_ok
  end
end


Student.first.assignment.first == "matrix sexy web services"
