class StudentCourse
  @@all = []

  attr_accessor :student, :course

  def initialize(student, course)
    @student = student
    @course =course
     save
  end

  def save
    self.class.all.push(self)
  end

  def self.all
    @@all
  end

end
