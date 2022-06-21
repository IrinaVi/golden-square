# File: lib/music_library.rb

class MusicLibrary
    def initialize
      @all_tracks = []
    end
  
    def add(track)
        @all_tracks << track
    end
  
    def all
      @all_tracks
    end
    
    def search(keyword)
        matched = []
        @all_tracks.each { |track| matched << track if track.matches?(keyword)}
        matched
    end
  end