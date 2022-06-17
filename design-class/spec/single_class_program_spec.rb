require "single_class_program"

RSpec.describe Todo do
    it "raises an error when no string is passed to the add method" do
        todo = Todo.new
        expect {todo.add("")}.to raise_error "You did  not add anything"
    end

    it "returns the array with todo when one todo is added" do
        todo = Todo.new
        expect(todo.add("Feed the cat")).to eq ["Feed the cat"]
    end

    it "returns todo as a string when one todo was passed" do
        todo = Todo.new
        todo.add("Hoover")
        expect(todo.print_todos).to eq "Hoover"
    end

    it "returns multiple todos as a string when multiple todo were passed" do
        todo = Todo.new
        todo.add("Hoover")
        todo.add("Clean the dishes")
        expect(todo.print_todos).to eq "Hoover, Clean the dishes"
    end

    it "test" do
        todo = Todo.new
        expect{todo.print_todos}.to raise_error "Your todo list is empty"
    end
end