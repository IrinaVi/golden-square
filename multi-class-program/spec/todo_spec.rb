require "todo"

describe Todo do
    it "returns task after it was added" do
        todo = Todo.new("Hoover")
        expect(todo.task).to eq "Hoover"
    end

    it "returns task after it was added" do
        todo_1 = Todo.new("Hoover")
        todo_2 = Todo.new("Feed the cat")
        todo_1.mark_done!
        expect(todo_1.done?).to eq true
        expect(todo_2.done?).to eq false
    end

    it "returns task after it was added" do
        todo_1 = Todo.new("Make dinner")
        todo_2 = Todo.new("Clean dust")
        todo_3 = Todo.new("Exercise")
        todo_1.mark_done!
        todo_3.mark_done!
        expect(todo_1.done?).to eq true
        expect(todo_2.done?).to eq false
        expect(todo_3.done?).to eq true
    end
end