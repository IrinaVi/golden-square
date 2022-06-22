class Diary
    def initialize
        @all_entries = []
        @phone_numbers = []
    end

    def add(entry)
        @all_entries << entry
    end

    def list
        @all_entries
    end

    def phone_numbers
        @all_entries.each {|entry| @phone_numbers << entry.extract_phone }
        @phone_numbers
    end

    def best_entry_to_read(wpm,minutes)
        selected_entries = @all_entries.select { |entry| entry.reading_time(wpm)<=minutes }
        sorted_arr = selected_entries.sort { |entry| entry.reading_time(wpm)}
        return sorted_arr.first
    end
end