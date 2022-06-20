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
        @all_todos.each {|task| @incomplete << task.task unless task.done?}
        @incomplete
    end
  
    def complete
        @all_todos.each {|task| @complete << task.task if task.done?}
        @complete
    end
  
    def give_up!
        @all_todos.each {|todo| @complete << todo.task}
        @complete
  end
end