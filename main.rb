require './student.rb'
require './student_course.rb'
require './course.rb'

math = Course.new("Mathematics", "12pm", 
engineering = Course.new("Engineering", "1pm", "Henry")
data_science = Course.new("Data Science", "10am", "Sandy")
astronomy = Course.new("Astronomy", "7:30am", "Myers")

ally = Student.new("Allyson Daves", 12, 11)
shola = Student.new("Shola Thompson", 15, 12)
olu =  Student.new("Olu Adeboye", 14, 12)

# StudentCourse.new(olu, math)
# p StudentCourse.all

# puts olu.available_courses
#   puts olu.enroll(math)
#    puts olu.enroll(data_science)
#    puts shola.enroll(math)
# #    p olu.courses
# # p Course.all
# # puts "\n"
# # puts olu.available_courses
# # p olu.courses
# # olu.print_my_courses
#   puts shola.enroll(engineering)
#   p StudentCourse.all

#   puts "\n"
#   math.student_list
# #  olu.print_my_courses
#  # math.view_students
# # engineering.view_students
# #  puts shola.enroll(math)
# #  puts "\n"
# #   p math.student_list
# #  math.view_students
# # astronomy.view_students

# # puts "\n"
# # p StudentCourse.all 
# # """Really really helpful to understand what StudentCourse is needed for."""
# puts "\n"
# astronomy.view_students
# engineering.view_students
#  #ally.print_my_courses