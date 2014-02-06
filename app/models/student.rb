class Student < ActiveRecord::Base
  has_many :submissions
  has_many :assignments, through: :submissions
end
