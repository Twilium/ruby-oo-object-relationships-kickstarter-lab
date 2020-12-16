require 'pry'
class Backer
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        project_backer = ProjectBacker.all.select do |project_backer|
            project_backer.backer == self
        end
        project_backer.map do |backer|
            backer.project
        end
    end

end