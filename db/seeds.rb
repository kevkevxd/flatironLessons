Student.delete_all
Teacher.delete_all
GradeLevel.delete_all
School.delete_all

adams = School.create(name: "Adams High School", mascot: "highlander")
rhs = School.create(name: "Rochester High School", mascot: "falcons")
stoney = School.create(name: "Stoney Creek High School", mascot: "cougars")

s1=Student.create(first_name:"s1",last_name:"l1",grade_level:"9th", school_id: adams.id)
s2=Student.create(first_name:"s3",last_name:"l2",grade_level:"9th", school_id: rhs.id)
s3=Student.create(first_name:"s3",last_name:"l3",grade_level:"10th", school_id: stoney.id)
s5=Student.create(first_name:"s5",last_name:"l4",grade_level:"10th", school_id: adams.id)
s6=Student.create(first_name:"s6",last_name:"l5",grade_level:"10th", school_id: adams.id)


t1=Teacher.create(last_name:"l1",grade_level:"9th",years_of_experience:5, school_id: adams.id)
t2=Teacher.create(last_name:"l2",grade_level:"9th",years_of_experience:9, school_id: rhs.id)
t3=Teacher.create(last_name:"l3",grade_level:"10th",years_of_experience:11, school_id: stoney.id)
t4=Teacher.create(last_name:"l4",grade_level:"10th",years_of_experience:13, school_id: adams.id)

g1=GradeLevel.create(student_id:s1.id,teacher_id:t1.id)
g2=GradeLevel.create(student_id:s2.id,teacher_id:t2.id)
g3=GradeLevel.create(student_id:s3.id,teacher_id:t3.id)
g4=GradeLevel.create(student_id:s5.id,teacher_id:t4.id)
