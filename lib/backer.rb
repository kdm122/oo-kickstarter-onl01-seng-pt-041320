class Backer
  attr_reader :name
  attr_accessor :backed_projects


  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(title)
    @backed_projects << title
#    project.add_backer << self
    unless title.backers.include?(self)
      title.backers << self
    end
  end



end
