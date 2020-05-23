require "pry"

class Project
  attr_reader :title
  attr_accessor :backers


  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(name)
    @backers << name
  #  binding.pry
    unless name.backed_projects.include?(self)
      name.backed_projects << self
    end
  end

end
