require "exercise"

RSpec.describe DiaryEntry do
    it "returns correct reading chunk when we call the function once" do
        diary_entry = DiaryEntry.new("test", "Lorem ipsum dolor sit amet.")
        diary_entry.count_words
        result = diary_entry.reading_chunk(1,2)
        expect(result).to eq "Lorem ipsum"
    end

    it "returns second chunk when the function was called twice." do
        diary_entry = DiaryEntry.new("test", "Lorem ipsum dolor sit amet.")
        diary_entry.count_words
        diary_entry.reading_chunk(1,2)
        result = diary_entry.reading_chunk(1,2)
        expect(result).to eq "dolor sit"
    end
    
    it "returns first chunk" do
        diary_entry = DiaryEntry.new("test", "Lorem ipsum dolor sit amet.")
        diary_entry.count_words
        diary_entry.reading_chunk(1,2)
        diary_entry.reading_chunk(1,3)
        result = diary_entry.reading_chunk(1,2)
        expect(result).to eq "Lorem ipsum"
    end
end