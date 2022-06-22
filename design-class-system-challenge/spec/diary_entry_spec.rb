require "diary_entry"

RSpec.describe DiaryEntry do
    it "returns a diary entry" do
        diary_entry = DiaryEntry.new("Hoover")
        expect(diary_entry.one_entry).to eq "Hoover"
    end

    it "extracts a phone number from the entry" do
        diary_entry = DiaryEntry.new("Test, test, phone: 07872325176")
        expect(diary_entry.extract_phone).to eq "07872325176"
    end

    it "returns reading time for the contents" do
        diary_entry = DiaryEntry.new("One two three four")
        expect(diary_entry.reading_time(2)).to eq 2 
    end

    it "returns reading time for the contents" do
        diary_entry = DiaryEntry.new("One two three four five")
        expect(diary_entry.reading_time(2)).to eq 3 
    end
end