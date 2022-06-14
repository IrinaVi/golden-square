require "check_codeword"

RSpec.describe "check_codeword method" do
    it "checks the input for GFHDJK and returns wrong" do
        result = check_codeword("GFHDJK")
        expect(result).to eq "WRONG!"
    end

    it "returns correct for the correct keyword" do
        result = check_codeword("horse")
        expect(result).to eq "Correct! Come in."
    end

    it "check the argument that starts with h, ends with e" do
        result = check_codeword("hsdfske")
        expect(result).to eq "Close, but nope."
    end

    it "returns wrong message when a wrong keyword given" do
        result = check_codeword("HOLIDAY")
        expect(result).to eq "WRONG!"
    end

    it "returns wrong message when the two word string is given" do
        result = check_codeword("horse runs")
        expect(result).to eq "WRONG!"
    end

end