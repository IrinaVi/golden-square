class Diary
    def initialize
        @all_enteries = []
    end
  
    def add(entry)
        @all_enteries << entry
    end
  
    def all
        @all_enteries
    end
  
    def count_words
        total = 0
        @all_enteries.each {|one_entry| total+=one_entry.count_words}
        return total
    end
  
    def reading_time(wpm) 
        (count_words.to_f/wpm).ceil
    end
  
    def find_best_entry_for_reading_time(wpm, minutes)
        #here we take all entries, loop through them, check reading time for each of them, keep items that are within reading times
        #return the first item
        readable_entries = @all_enteries.filter do |entry|
            entry.reading_time(wpm) <= minutes
        end
        sorted_by_longest = readable_entries.sort_by {|entry| entry.reading_time(wpm) }
        return sorted_by_longest[-1]
    end
end