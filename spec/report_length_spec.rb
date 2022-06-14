require "report_length"

RSpec.describe "report_length method" do
    it "checks the string hello and returns 5" do
        result = report_length("Hello")
        expect(result).to eq "This string was 5 characters long."
    end

    it "checks the string cat and returns 3" do
        result = report_length("cat")
        expect(result).to eq "This string was 3 characters long."
    end
end