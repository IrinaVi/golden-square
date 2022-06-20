class TodoList
    def initialize
        @all_todos = []
        @incomplete = []
        @complete = []
    end
  
    def add(todo) 
        @all_todos << todo
    end
  
    def incomplete
        for task in @all_todos
            unless task.done?
                @incomplete << task.task
            end
        end
        @incomplete
    end
  
    def complete
        for todo in @all_todos
            if todo.done?
                @complete << todo.task
            end
        end
        @complete
    end
  
    def give_up!
        @all_todos.each do |todo|
            @complete << todo.task
        end
        @complete
  end
end