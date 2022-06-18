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
    current_chunk_list = @contents.split(" ")
    if @furthest_word_read >= count_words
      @furthest_word_read = 0
    end
    current_chunk = current_chunk_list[@furthest_word_read, chunk_length].join(" ")
    puts "Current furthest word #{@furthest_word_read}. chuck length #{chunk_length}, current chunk: #{current_chunk}"
    @furthest_word_read = chunk_length+@furthest_word_read
    return current_chunk
  end
end