s1=Student.create(first_name:"s1",last_name:"l1",grade_level:"9th")
s2=Student.create(first_name:"s3",last_name:"l2",grade_level:"9th")
s3=Student.create(first_name:"s3",last_name:"l3",grade_level:"10th")
s5=Student.create(first_name:"s5",last_name:"l4",grade_level:"10th")
s6=Student.create(first_name:"s6",last_name:"l5",grade_level:"10th")


t1=Teacher.create(last_name:"l1",grade_level:"9th",years_of_experience:5)
t2=Teacher.create(last_name:"l2",grade_level:"9th",years_of_experience:9)
t3=Teacher.create(last_name:"l3",grade_level:"10th",years_of_experience:11)
t4=Teacher.create(last_name:"l4",grade_level:"10th",years_of_experience:13)

g1=GradeLevel.create(student_id:s1.id,teacher_id:t1.id)
g2=GradeLevel.create(student_id:s2.id,teacher_id:t2.id)
g3=GradeLevel.create(student_id:s3.id,teacher_id:t3.id)
g4=GradeLevel.create(student_id:s5.id,teacher_id:t4.id)
