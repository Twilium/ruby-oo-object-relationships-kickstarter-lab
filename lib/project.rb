class Project
    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        project_backer = ProjectBacker.all.select do |project_backer|
            project_backer.project == self
        end

        project_backer.map do |project|
            project.backer
        end
    end

end