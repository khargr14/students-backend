class Api::V1::TeachersController < ApplicationController
    #  before_action :set_teacher
      before_action :set_student#, only: [:show, :update, :edit, :]

    def index
        teachers = @student.teachers
        
        render json: teachers
      end
    
      def create
        teacher = @student.teachers.new(teacher_params)
        puts teacher.inspect
        if teacher.save
          render json: @student
        else
          puts teacher.errors.inspect
          render json: {error: 'Error creating teacher'}
        end
      end
    
      def show
        teacher = @student.teachers.find_by(id: params[:id])
        render json: teacher
      end
    
      def update
        teacher = Teacher.find(params[:id])
        teacher.update(teacher_params)
        render json: teacher
      end
    
      def destroy
        teacher = @student.teachers.find_by(id: params[:id])
        teacher.destroy
        render json: @student
      end
    
      private
    
      def set_student
        @student = Student.find(params[:student_id])
      end
      
    
      def teacher_params
        params.require(:teacher).permit(:student_id, :name, :email, :date, :message)
      end
end
