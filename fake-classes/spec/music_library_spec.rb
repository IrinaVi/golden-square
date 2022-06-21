require "music_library"

RSpec.describe MusicLibrary do
    it "returns a list of tracks that we searched for" do
        music_library = MusicLibrary.new
        track_1 = double(:fake_track, matches?: false)
        track_2 = double(:fake_track, matches?: true)
        music_library.add(track_1)
        music_library.add(track_2)
        expect(music_library.search("test")).to eq [track_2]
    end
end