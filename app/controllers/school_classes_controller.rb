class SchoolClassesController < ApplicationController
    def show
      @school_class = SchoolClass.find(params[:id])
    end
  
    def new
      @school_class = SchoolClass.new
    end
  
    def edit
      @school_class = SchoolClass.find(params[:id])
    end
  
    def create
      @school_class = SchoolClass.new(school_class_params)
      @school_class.save
      redirect_to school_class_path(@school_class)
    end
  
    def update
      @school_class = SchoolClass.find(params[:id])
      @school_class.update(school_class_params)
      redirect_to school_class_path(@school_class)
    end
  
    private
  
    def school_class_params
      params.require(:school_class).permit!
    end
  end