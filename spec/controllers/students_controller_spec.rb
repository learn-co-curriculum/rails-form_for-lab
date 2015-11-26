require 'rails_helper'

describe StudentsController do

  describe "POST create" do
    context "with valid attributes" do
      it "creates a new student" do
        expect{
          post :create, student: FactoryGirl.attributes_for(:student)
        }.to change(Student,:count).by(1)
      end
      
      it "redirects to the new student" do
        post :create, student: FactoryGirl.attributes_for(:student)
        expect(response).to redirect_to Student.last
      end
    end
  end

end