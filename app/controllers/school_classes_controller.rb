class SchoolClassesController < ApplicationController
  def new
		@school_class = SchoolClass.new
	end

  def create
    @school_class = SchoolClass.new(post_params(:title, :room_number))
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end


  private

  def post_params(*args)
    params.require(:school_class).permit(*args)
  end
end
