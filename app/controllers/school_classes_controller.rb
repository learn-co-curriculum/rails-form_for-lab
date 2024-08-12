class SchoolClassesController < ApplicationController
  def create
    @school_class = SchoolClass.create(classes_params)
    redirect_to school_class_path(@school_class)
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def new
   @school_class = SchoolClass.new
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(classes_params)
    redirect_to school_class_path(@school_class)
  end

  private

  def classes_params
    params.require(:school_class).permit(:title, :room_number)
  end

end
