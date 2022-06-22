require "todo_list"
require "todo"

RSpec.describe "todo integration" do
    it "returns a list of todos" do
        todo_list = TodoList.new
        todo = Todo.new("Test")
        todo_list.add(todo)
        expect(todo_list.list).to eq [todo]
    end

    it "returns several todos in a list" do
        todo_list = TodoList.new
        todo_1 = Todo.new("Test")
        todo_2 = Todo.new("Test_2")
        todo_list.add(todo_1)
        todo_list.add(todo_2)
        expect(todo_list.list).to eq [todo_1,todo_2]
    end
end