=begin
    1. Describe the program
    As a user
    So that I can keep track of my tasks
    I want a program that I can add todo tasks to and see a list of them.

    I want to mark tasks as complete and have them disappear from the list.

    The program should be able to accepts strings and then return all inserted strings as a list.

    2. class Todo, initializer - creates a var with an empty list
    Method add(): accepts a string - a todo
    Method print_todos: returns a list of items
    Method delete(done_todo): accept a string which is a todo and then it will delete it from the list of todos

    3. Example tests:
    todo = Todo.new
    todo.add("") => raise error "Nothing was added"

    todo = Todo.new
    todo.add("Feed the cat")
    todo.print_todos => "Feed the cat"

    todo = Todo.new
    todo.add("Clean the dishes")
    todo.add("Hover")
    todo.print_todos = "Clean the dishes, Hover"

    todo = Todo.new
    todo.add("Clean the dishes")
    todo.add("Hoover")
    todo.delete("Clean the dishes") 
    todo.print_todos => "Hoover"

    todo = Todo.new
    todo.delete("Feed the cat) => FAIL "There is no such a task in the list!"

=end

class Todo
    def initialize
        @all_todos = []
    end

    def add(todo)
        fail "You did  not add anything" if todo.empty?
        @all_todos << todo
    end

    def delete(done_todo)
        fail "There is no such a task in the list!" unless @all_todos.include?(done_todo)
        @all_todos.delete(done_todo)
    end

    def print_todos
        fail "Your todo list is empty" if @all_todos.empty?
        @all_todos.join(", ")
    end
end