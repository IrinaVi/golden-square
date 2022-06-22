require "diary"
require "diary_entry"

RSpec.describe "integration" do
    it "allows to add a diary entry and return it" do
        diary = Diary.new
        diary_entry = DiaryEntry.new("my diary 1")
        diary.add(diary_entry)
        expect(diary.list).to eq [diary_entry]
    end

    it "returns the entry that best suites time and reading speed" do
        diary = Diary.new
        diary_entry_1 = DiaryEntry.new("one")
        diary_entry_2 = DiaryEntry.new("one two")
        diary_entry_3 = DiaryEntry.new("one two three")
        diary.add(diary_entry_1)
        diary.add(diary_entry_2)
        diary.add(diary_entry_3)
        expect(diary.best_entry_to_read(2,1)).to eq diary_entry_2
    end

    it "returns a list of phone numbers when diary entry had a phone number" do
        diary = Diary.new
        diary_entry = DiaryEntry.new("my diary 1, phone: 07771091061")
        diary.add(diary_entry)
        expect(diary.phone_numbers).to eq ["07771091061"]
    end
end