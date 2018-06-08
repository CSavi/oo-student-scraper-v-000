class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url

  @@all = []

  def initialize(student_hash)
    student_hash.each {|key, value| send("#{key}=", value)
     }
     @@all << self
  end

  def self.create_from_collection(students_array)  #takes in an array of hashes; iterates over array of hashes
    students_array.each {|student| Student.new(student)}
  end

  def add_student_attributes(attributes_hash)
    attributes_hash.each {|key, value| binding.pry}
  end

  def self.all
    @@all
  end
end
