require "track"

RSpec.describe Track do
    it "returns false if title or artist do not match" do
        track = Track.new("Julien", "meow-meow")
        expect(track.matches?("bla")).to eq false
    end

    it "returns true if title or artist do match" do
        track = Track.new("Julien", "meow-meow")
        expect(track.matches?("Julien")).to eq true
    end
end