class DiaryEntry
    def initialize(title, contents)
        @title = title
        @contents = contents
        @furthest = 0
    end
  
    def title
        @title
    end
  
    def contents
        @contents
    end
  
    def count_words
        @contents.split(" ").length
    end
  
    def reading_time(wpm)
        (count_words.to_f/wpm).ceil
    end
  
    def reading_chunk(wpm, minutes)
        chunk_length = wpm * minutes
        contents_list = @contents.split(" ")
        if @furthest >= count_words
            @furthest = 0
        end
        current_chunk = contents_list[@furthest, chunk_length].join(" ")
        @furthest = chunk_length + @furthest
        return current_chunk

    end
  end