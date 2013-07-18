class Job < ActiveRecord::Base
    
  has_many :apps, :class_name => App, :foreign_key => :job_id
  
end
