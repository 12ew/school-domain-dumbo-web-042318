require 'pry'

class School

  attr_reader :name, :roster

  def initialize(name)
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade] ||= [] # could be: self.roster
      @roster[grade] << name # could be: self.roster
    end
    # ===================================
    # if @roster[grade]
    #   @roster[grade] << name
    # else                              || also works ||
    #   @roster[grade] = [name]
    # end
    # =====================================
  end

  def grade(grade)
    @roster[grade] # could be: self.roster[grade]
  end

  def sort
      @roster.each do |grade, students| # could be: self.roster.each do |grade, students|
        students.sort!
      end
  end

end
