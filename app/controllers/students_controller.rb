class StudentsController < ApplicationController
  def new
		@student = Student.new
	end

  def create
    @student = Student.new(post_params(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
  end

  def show
    @student = Student.find(params[:id])
  end

  # def update
  #   @school_class = SchoolClass.find(params[:id])
  #   @school_class.update(params.require(:school_class).permit(:title, :room_number))
  #   redirect_to post_path(@post)
  # end

  private

  def post_params(*args)
    params.require(:student).permit(*args)
  end
end
