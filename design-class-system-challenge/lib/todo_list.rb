class TodoList
    def initialize()
        @todo = []
    end

    def add(todo)
        @todo << todo
    end

    def list
        @todo
    end
end