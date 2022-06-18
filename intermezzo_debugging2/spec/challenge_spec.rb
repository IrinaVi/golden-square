require "challenge"

RSpec.describe LetterCounter do
  it "returns i for digital punk" do
    counter = LetterCounter.new("Digital Punk")p counter.calculate_most_common

end
# Intended output:
# [2, "i"]