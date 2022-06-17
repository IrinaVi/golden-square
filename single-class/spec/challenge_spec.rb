require "challenge"

RSpec.describe GrammarStats do
    it "returns true for text that starts with capital and ends with a dot" do
        grammar_stats = GrammarStats.new
        expect(grammar_stats.check("Hello.")).to eq true
    end

    it "returns false for text that starts with lower case letter" do
        grammar_stats = GrammarStats.new
        expect(grammar_stats.check("hello.")).to eq false
    end

    it "returns an error if no text was provided" do
        grammar_stats = GrammarStats.new
        expect{grammar_stats.check("")}.to raise_error "No text was provided"
    end

    context "checking that class" do
        
        it "returns 50 when we do 1 passing and 1 failing test" do
            grammar_stats = GrammarStats.new
            grammar_stats.check("Hello World.")
            grammar_stats.check("julien is playing.")
            expect(grammar_stats.percentage_good).to eq 50
        end

        it "returns 0 if no tests done" do
            grammar_stats = GrammarStats.new
            expect{grammar_stats.percentage_good}.to raise_error "No tests were done"
        end
    end
end