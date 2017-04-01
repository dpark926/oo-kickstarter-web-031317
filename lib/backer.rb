require 'pry'
class Backer
  attr_accessor :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project) #<Project:0x007fe6c4edf938 @backers=[], @title="Magic The Gathering Thing">
    @backed_projects << project
    project.backers << self
  end
end
