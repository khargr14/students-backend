class Api::V1::StudentsController < ApplicationController

  def index
      students = Student.all
      
      render json: students
    end
  
    def create
      
      student = Student.new(student_params)
      if student.save
        render json: student
      else
        render json: {error: 'Error creating student'}
      end
    end
  
    def show
      student = Student.find(params[:id])
      render json: student
    end
  
    def update
      student = Student.find(params[:id])
      student.update(student_params)
      render json: student
    end
  
    def destroy
      student = Student.find(params[:id])
      student.destroy
      render json: {status: :ok}
    end
  
    private
  
    def student_params
      params.require(:student).permit(:name, :number, :email, :teacher_id)
    end
end
