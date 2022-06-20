class Diary
    def initialize
        @all_entires = []
        @entries_length = Hash.new(0)
    end
  
    def add(entry)
        @all_entires << entry
    end
  
    def all
      @all_entires
    end
  
    def count_words
        @all_entires.each do |entry| 
            @entries_length[entry.contents] += entry.count_words
        end
        @entries_length
    end
  
    def reading_time(wpm) 
        total = 0
        @all_entires.each do |entry|
            total += entry.count_words
        end
        total
    end
  
    def find_best_entry_for_reading_time(wpm, minutes)
        chunk = wpm * minutes
        selected = @entries_length.select {|key,value| value <= chunk}
        sorted_entries = selected.sort {|key, value| value}
    end
  end