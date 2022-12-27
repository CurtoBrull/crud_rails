class CoursesController < ApplicationController
  def index
    @courses = Course.where(visible: true)
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.create title:params[:course][:title], description:params[:course][:description], visible:params[:course][:visible]
  end
end
