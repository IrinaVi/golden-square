class DiaryEntry
  def initialize(title, contents)
    @title = title
    @contents = contents
    @furthest_word_read = 0
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
    (count_words/wpm.to_f).ceil
  end

  def reading_chunk(wpm, minutes)
    chunk_length = wpm * minutes
    puts "Current furthest word #{@furthest_word_read}. count words: #{chunk_length}"
    if @furthest_word_read >= count_words
      @furthest_word_read = 0
    else
      current_chunk = @contents.split(" ").slice(@furthest_word_read, chunk_length+@furthest_word_read).join(" ")
      @furthest_word_read = chunk_length
      current_chunk
    end
  end
end