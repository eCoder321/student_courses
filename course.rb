class Course
  attr_accessor :time, :title, :instructor, :students
  @@all = []

  def initialize(title, time, instructor)
    @title = title
    @time = time
    @instructor =instructor
    #@students = []
    save
  end

  def save
    self.class.all.push(self)
  end

  def self.all
    @@all
  end

  def view_students_helper(student_list)
    student_list.collect {
      |student_instance|
      student_instance.name
    }
  end

  # def student_list
  #   @students
  # end

  def student_list
    StudentCourse.all.collect{
      |student_course_instance|
      if self == student_course_instance.course
        student_course_instance.student
      end
    }.compact
    #  puts "\n"
    #  p self.students
  end

  def view_students
    if self.student_list.length == 0
      puts "No student is currently enrolled in #{self.title}"
    elsif self.student_list.length == 1
      puts "#{self.view_students_helper(self.student_list)[0]} is the only student enrolled in #{self.title}."
    else
      puts "The students enrolled in #{self.title} are"
      puts self.view_students_helper(self.student_list)
    end

  end

end
