class TeacherSerializer < ActiveModel::Serializer
    
    attributes :id, :student_id, :name, :email, :date, :message
  end
  