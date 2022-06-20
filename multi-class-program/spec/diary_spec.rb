require "Diary"

RSpec.describe Diary do
    it "returns an empty list" do
        diary = Diary.new
        expect(diary.all).to eq []
    end

    it "returns 0 when no entries were added" do
        diary = Diary.new
        expect(diary.count_words).to eq 0
    end
end