class Student < ApplicationRecord
    has_many :teachers
    validates  :name, :number, :email, presence: true
end
