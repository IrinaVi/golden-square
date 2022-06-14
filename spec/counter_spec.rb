require 'counter'

describe Counter do
    it "returns the total of numbers counted" do
        counter1 = Counter.new
        counter1.add(10)
        expect(counter1.report()).to eq "Counted to 10 so far."
    end
    it "returns the total of numbers counted" do
        counter1 = Counter.new
        counter1.add(10)
        counter1.add(3)
        expect(counter1.report()).to eq "Counted to 13 so far." 
    end
end
