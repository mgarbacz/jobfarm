class User < ActiveRecord::Base
  has_many :apps_for_jobs,
           :class_name => App,
           :foreign_key => :applicant_id

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
