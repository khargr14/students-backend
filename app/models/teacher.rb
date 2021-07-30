class Teacher < ApplicationRecord
    belongs_to :student
    validates :name, :email, :date, :message, presence: true
end
