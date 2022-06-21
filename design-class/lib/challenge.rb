=begin
    1. Describe problem
    So that I can keep track of my music listening
    I want to add tracks I've listened to and see a list of them.

    2. Class interface
    class Music
    methods:
    initializer - initialises an instance variable(array)
    add(track) - accepts one argument(a string), adds it to the list of all tracks
    list - returns a list of all tracks that were added
    
    3. Examples
    music = Music.new
    music.list => []

    music = Music.new
    music.add("my music")
    music.list => ["my music"]

    music = Music.new
    music.add("my music1")
    music.add("my music2")
    music.list = ["my music1", "my music2"]
    
=end

class Music
    def initialize
        @all_tracks = []
    end 

    def add(track)
        @all_tracks << track
    end

    def list
        @all_tracks
    end
end