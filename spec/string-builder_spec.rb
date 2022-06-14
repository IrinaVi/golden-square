require 'string-builder'

RSpec.describe StringBuilder do
    it "checking if argument hello returns length 5 and correct string" do
        string_builder = StringBuilder.new
        string_builder.add("hello")
        result = string_builder.output
        expect(result).to eq "hello"
    end
    it "returns the length of string" do
        string_builder = StringBuilder.new
        string_builder.add("hello")
        result = string_builder.size
        expect(result).to eq 5
    end
    
    it "returns concatenated string when more than one word is given" do
        string_builder = StringBuilder.new
        string_builder.add("hello")
        string_builder.add("world")
        expect(string_builder.output).to eq "helloworld"
        expect(string_builder.size).to eq 10
    end


end

