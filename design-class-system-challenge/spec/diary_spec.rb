require "diary"

RSpec.describe Diary do
    it "returns an empty array when nothing was added" do
        diary = Diary.new
        expect(diary.list).to eq []
    end
end