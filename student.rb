class Student
  attr_accessor :grade, :age, :courses
  attr_reader :name

  def initialize(name, age, grade)
    @name = name 
    @age = age 
    @grade = grade
    #@courses = [] #"we no longer need this since we can use the StudentCourse class"
  end

  def enroll(course)
    # self.courses.push(course)
    # course.students.push(self)
   # """this StudentCourse.new(self,course) takes the place of both variables defined above"""
    StudentCourse.new(self, course)
    "Awesome job #{self.name}! You have successfully enrolled in #{course.title}."
  end

  def courses_helper(course_list)
    course_list.collect {
      |course_instance|
      "#{course_instance.title} with instructor #{course_instance.instructor} at #{course_instance.time}."
    }
  end
  
  def available_courses
    courses = Course.all
    self.courses_helper(courses)
    # the StudentCourse class doesn't help in this case, though.
  end

  def course_list
    StudentCourse.all.collect{
      |student_course_instance|
      # puts "self: #{self}"
      # puts "StudentCourse.student: #{student_course_instance.student}"
      if self == student_course_instance.student
        student_course_instance.course
      end
    }.compact
  end

  def print_my_courses
    #puts self.courses_helper(self.courses) 
    # instead of creating a @courses variable where all the courses taken by this student is stored, we can save a linked copy of that data in a StudentCourse instance.
    if course_list.length == 0
      puts "You are not yet registered for any courses, #{self.name}"
    else
      puts "#{self.name}, you are registered for:"
      puts self.courses_helper(self.course_list)
    end
   end


end
