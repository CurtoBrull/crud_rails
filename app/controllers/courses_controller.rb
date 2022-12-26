class CoursesController < ApplicationController
  def index
    @courses = Course.where(visible: true)
  end

  def new
  end
end
