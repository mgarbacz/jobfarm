class StaticController < ApplicationController
before_filter :authenticate_user!, :only => [:profile]
  def landing
  end

  def profile
    @user = current_user
  end

  def listings
    @jobs = Job.all
  end

  def recruiter
    @jobs = Job.all
  end

end
