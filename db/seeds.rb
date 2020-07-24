Student.delete_all
Teacher.delete_all
# Grade.delete_all

 s1= Student.create(first_name: "s1",last_name:"Jones", grade_level: "9th")
 s2= Student.create(first_name: "s3",last_name:"wilsone", grade_level: "9th")
 s3= Student.create(first_name: "s4",last_name:"chan", grade_level: "10th")


 t1 = Teacher.create(last_name: "t1", grade_level:"9th",years_of_experience: 5)
 t2 = Teacher.create(last_name: "t2", grade_level:"9th",years_of_experience: 9)
 t3 = Teacher.create(last_name: "t3", grade_level:"10th",years_of_experience: 11)

#  grade9= Grade.create(student_id: s1.id,teacher_id: t1.id)
#  grade9= Grade.create(student_id: s1.id,teacher_id: t2.id)


s5= Student.create(first_name: "s5",last_name:"thai",grade_level: "10th")
s6= Student.create(first_name: "s6",last_name:"choo",grade_level: "10th")
t4 = Teacher.create(last_name: "t4", grade_level:"10th",years_of_experience: 13)
#grade10= Grade.create(student_id: s5.id,teacher_id: t4.id)
#grade10= Grade.create(student_id: s6.id,teacher_id: t4.id)