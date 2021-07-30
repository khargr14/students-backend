class StudentSerializer < ActiveModel::Serializer
    
    attributes :id, :name, :number, :email
  
    has_many :teachers
  end
  