require "diary_entry"

RSpec.describe do
    it "returns title and the contents when they were added" do
        diary_entry = DiaryEntry.new("19th of June", "Very good day")
        expect(diary_entry.title).to eq "19th of June"
        expect(diary_entry.contents).to eq "Very good day"
    end

    it "returns the length of the contents" do
        diary_entry = DiaryEntry.new("19th of June", "Very good day")
        expect(diary_entry.count_words).to eq 3
    end

    it "returns 1 minute for the contents" do
        diary_entry = DiaryEntry.new("Today", "Julien was jumping like crazy and then was asking for tasty food")
        expect(diary_entry.reading_time(5)).to eq 3
    end

    it "returns chunk that a user can read for the given time" do
        diary_entry = DiaryEntry.new("1st of January", "Celebrating the new year, super funny")
        expect(diary_entry.reading_chunk(1,2)).to eq "Celebrating the"
    end

    it "returns chunk that a user can read for the given time" do
        diary_entry = DiaryEntry.new("1st of January", "Celebrating the new year, super funny and exciting, Julien is the greates cat.")
        diary_entry.reading_chunk(1,2)
        expect(diary_entry.reading_chunk(3,2)).to eq "new year, super funny and exciting,"
    end

    it "returns chunk that a user can read for the given time" do
        diary_entry = DiaryEntry.new("1st of January", "Celebrating the new year, super funny and exciting, Julien is the greates.")
        diary_entry.reading_chunk(3,4)
        expect(diary_entry.reading_chunk(1,2)).to eq "Celebrating the"
    end

    it "returns chunk that a user can read for the given time" do
        diary_entry = DiaryEntry.new("1st of January", "Celebrating the new year, super funny and exciting, Julien is the greates.")
        diary_entry.reading_chunk(3,2)
        diary_entry.reading_chunk(3,2)
        expect(diary_entry.reading_chunk(2,2)).to eq "Celebrating the new year,"
    end
end