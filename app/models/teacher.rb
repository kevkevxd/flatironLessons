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

    # def grades
    #     Grade.all.select do |g|
    #         g.teacher_id==self.id
    #     end
    # end 
    
    # def students
    #     Student.all.select do |t|
    #         self.grade.select do |g|
    #             g.student_id == t.id
    #         end
    #     end
    # end

end