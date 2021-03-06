module Concerns::Findable
    def find_by_name(name)
        self.all.detect {|song| song.name == name}
    end

    def find_or_create_by_name(name)
        finder = self.find_by_name(name)
        if (finder.nil?)
            return self.create(name)
        end
        finder
    end

end