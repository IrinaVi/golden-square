require "todo_list"
require "todo"

describe "integration" do

    it "returns several incomplete todos" do
        todo_list = TodoList.new
        todo_1 = Todo.new("clean the dishes")
        todo_2 = Todo.new("wash clothes")
        todo_3 = Todo.new("iron")
        todo_list.add(todo_1)
        todo_list.add(todo_2)
        todo_list.add(todo_3)
        result = todo_list.incomplete
        expect(result).to eq ["clean the dishes","wash clothes","iron"]
    end

    it "returnes completed tasks" do
        todo_list = TodoList.new
        todo_1 = Todo.new("test 23")
        todo_2 = Todo.new("test 32")
        todo_3 = Todo.new("test 44")
        todo_list.add(todo_1)
        todo_list.add(todo_2)
        todo_list.add(todo_3)
        todo_1.mark_done!
        todo_2.mark_done!
        expect(todo_list.complete).to eq ["test 23","test 32"]
    end

    it "returns all tasks as complete" do
        todo_list = TodoList.new
        todo_1 = Todo.new("test 23")
        todo_2 = Todo.new("test 32")
        todo_3 = Todo.new("test 44")
        todo_list.add(todo_1)
        todo_list.add(todo_2)
        todo_list.add(todo_3)
        result = todo_list.give_up!
        expect(result).to eq ["test 23","test 32","test 44"]
    end
end
