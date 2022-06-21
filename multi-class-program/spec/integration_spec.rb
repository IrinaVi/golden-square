require "diary"
require "diary_entry"

RSpec.describe "integration" do
    it "returns diary entries" do
        diary = Diary.new
        diary_entry = DiaryEntry.new("first of june", "good day")
        diary.add(diary_entry)
        expect(diary.all).to eq [diary_entry]
    end

    it "returns total number of words in all entries" do
        diary = Diary.new
        diary_entry_1 = DiaryEntry.new("first of june", "good day")
        diary_entry_2 = DiaryEntry.new("second of june", "great day")
        diary.add(diary_entry_1)
        diary.add(diary_entry_2)
        expect(diary.count_words).to eq 4
    end

    it "returns reading time for the chunk" do
        diary = Diary.new
        diary_entry_1 = DiaryEntry.new("18th of june", "super rainy day")
        diary_entry_2 = DiaryEntry.new("19th of june", "very sunny and hot day")
        diary.add(diary_entry_1)
        diary.add(diary_entry_2)
        result = diary.reading_time(2)
        expect(result).to eq 4
    end


    it "returns the entry when there is only one entry" do
        diary = Diary.new
        diary_entry_1 = DiaryEntry.new("my title", "my contents")
        diary.add(diary_entry_1)
        result = diary.find_best_entry_for_reading_time(2,1)
        expect(result).to eq diary_entry_1
    end

    it "returns nil when there is not enough time" do
        diary = Diary.new
        diary_entry_1 = DiaryEntry.new("my title", "my contents longer")
        diary.add(diary_entry_1)
        result = diary.find_best_entry_for_reading_time(2,1)
        expect(result).to eq nil
    end

    it "returns nil when nothing was added" do
        diary = Diary.new
        result = diary.find_best_entry_for_reading_time(2,1)
        expect(result).to eq nil
    end

    it "returns the longest entry user could read" do
        diary = Diary.new
        diary.add(DiaryEntry.new("my title", "oone"))
        best_entry = DiaryEntry.new("my title", "oone two")
        diary.add(best_entry)
        diary.add(DiaryEntry.new("my title", "oone two three"))
        diary.add(DiaryEntry.new("my title", "oone two three four"))
        result = diary.find_best_entry_for_reading_time(2,1)
        expect(result).to eq best_entry
    end

    it "returns the longest entry user could read" do
        diary = Diary.new
        diary.add(DiaryEntry.new("my title", "oone"))
        diary.add(DiaryEntry.new("my title", "oone two"))
        diary.add(DiaryEntry.new("my title", "oone two three"))
        best_entry = DiaryEntry.new("my title", "oone two three four")
        diary.add(best_entry)
        result = diary.find_best_entry_for_reading_time(2,2)
        expect(result).to eq best_entry
    end
end