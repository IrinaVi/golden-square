require "debugging_challenge"

RSpec.describe "get_most_common_letter method" do
    it "returns o" do
        expect(get_most_common_letter("the roof, the roof, the roof is on fire!")).to eq "o"
    end
end