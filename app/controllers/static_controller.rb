class StaticController < ApplicationController
  def landing
  end

  def profile
  end

  def listings
    @jobs = Job.all
  end
end
