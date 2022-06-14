require 'greet'

RSpec.describe "greet method" do
    it "greets Irina" do
        result = greet("Irina")
        expect(result).to eq "Hello Irina!"
    end
end