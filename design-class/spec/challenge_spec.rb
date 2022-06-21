require "challenge"

RSpec.describe Music do
    it "returns an empty array if no tracks were added" do
        music = Music.new
        expect(music.list).to eq []
    end

    it "returns added track in a list" do
        music = Music.new
        music.add("my music")
        expect(music.list).to eq ["my music"]
    end

    it "returns multiple tracks in an array when multiple tracks were added" do
        music = Music.new
        music.add("my music1")
        music.add("my music2")
        expect(music.list).to eq ["my music1", "my music2"]
    end
end