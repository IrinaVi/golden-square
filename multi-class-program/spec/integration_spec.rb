require "diary"
require "diary_entry"

RSpec.describe "integration" do
    it "returns all added tracks as a list" do
        diary = Diary.new
        diary_entry = DiaryEntry.new("Fists of June", "Amazing")
        diary.add(diary_entry)
        expect(diary.all).to eq [diary_entry]
    end

    it "returns all added tracks as a list" do
        diary = Diary.new
        diary_entry1 = DiaryEntry.new("Fists of June", "Amazing")
        diary_entry2 = DiaryEntry.new("Second of June", "Great")
        diary.add(diary_entry1)
        diary.add(diary_entry2)
        expect(diary.all).to eq [diary_entry1,diary_entry2]
    end

    it "returns length of the entry" do
        diary = Diary.new
        diary_entry1 = DiaryEntry.new("Fists of June", "Amazing")
        diary.add(diary_entry1)
        expect(diary.count_words).to eq "Amazing" => 1
    end

    it "returns length of the entry" do
        diary = Diary.new
        diary_entry1 = DiaryEntry.new("Fists of June", "Amazing")
        diary_entry2 = DiaryEntry.new("Second of June", "Great bip")
        diary.add(diary_entry1)
        diary.add(diary_entry2)
        expect(diary.count_words).to eq "Amazing" => 1, "Great bip" =>2
    end

    it "returns time that would take a user to read the entries" do
        diary = Diary.new
        diary_entry1 = DiaryEntry.new("18th of May", "The trees are flowering and everything is green.")
        diary_entry2 = DiaryEntry.new("18th of June", "Very hot weather")
        diary.add(diary_entry1)
        diary.add(diary_entry2)
        expect(diary.reading_time(2)).to eq 11
    end

    it "returns the closest reading chunk" do
        diary = Diary.new
        diary_entry1 = DiaryEntry.new("18th of May", "The trees are flowering and everything is green.")
        diary_entry2 = DiaryEntry.new("18th of June", "Very hot weather")
        diary_entry3 = DiaryEntry.new("18th of June", "Hot and raining today")
        diary.add(diary_entry1)
        diary.add(diary_entry2)
        diary.add(diary_entry3)
        diary.count_words
        expect(diary.find_best_entry_for_reading_time(4,1)).to eq "Hot and raining today"
    end
end