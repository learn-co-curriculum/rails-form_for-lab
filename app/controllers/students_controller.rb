class StudentsController < ApplicationController

    def new
        @student = Student.new
    end

    def create
        @student = Student.new
        @student.first_name = [:first_name]
        @student.last_name = [:last_name]
        @student.save
        redirect_to student_path(@student)
    end

    def show

    end

    def edit

    end

    def update

    end

end
