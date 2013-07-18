class App < ActiveRecord::Base

  belongs_to :job, :class_name => Job 
  belongs_to :applicant, :class_name => User

end
