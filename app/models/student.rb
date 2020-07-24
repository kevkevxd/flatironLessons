class Student < ActiveRecord::Base
    has_many :grade_level
    belongs_to :teachers, through: :grade_level

    def full_name
        "#{self.first_name}+ " " + #{self.last_name}"
    end

    def self.all_in_grade(grade_level)
        Student.select {|s|s.grade_level == grade_level}
    end
end  
    
 

    # def grade 
    #     Grade.all.select do |g|
    #         g.student_id==self.id
    #     end
    # end

    # def teachers
    #     Teacher.all.select do |t|
    #         self.grade.select do |g|
    #             g.teacher_id == t.id
    #         end
    #     end
    # end
# end