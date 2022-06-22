require "todo"

RSpec.describe Todo do
    it "returns the added task" do
        todo = Todo.new("Feed the cat")
        result = todo.one_todo
        expect(result).to eq "Feed the cat"
    end
end