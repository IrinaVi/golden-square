require "music_library"
require "track"

RSpec.describe "integration" do
    it "returns an empty list when no tracks were added" do
        music_library = MusicLibrary.new
        expect(music_library.all).to eq []
    end

    it "returns multiple tracks when they were added to the library" do
        music_library = MusicLibrary.new
        track_1 = Track.new("my title 1", "my artist 1")
        track_2 = Track.new("my title 2", "my artist 2")
        music_library.add(track_1)
        music_library.add(track_2)
        expect(music_library.all).to eq [track_1,track_2]
    end

    it "returns searched track" do
        music_library = MusicLibrary.new
        chosen = Track.new("Julien", "my artist 1")
        music_library.add(chosen)
        music_library.add(Track.new("Tim", "my artist 2"))
        expect(music_library.search("Julien")).to eq [chosen]
    end

    it "returns searched track" do
        music_library = MusicLibrary.new
        chosen = Track.new("Julien", "my artist 1")
        music_library.add(chosen)
        chosen_2 = Track.new("Julien", "my artist 2")
        music_library.add(chosen_2)
        expect(music_library.search("Julien")).to eq [chosen, chosen_2]
    end
end