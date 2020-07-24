class Teacher < ActiveRecord::Base
    has_many :grade_level
    has_many :students, through: :grade_level

    def tenure
        if self.years_of_experience >5
            true
        else
            false
        end
    end
end