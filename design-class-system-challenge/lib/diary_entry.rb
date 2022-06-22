class DiaryEntry
    def initialize(contents)
        @contents = contents
    end

    def one_entry
        @contents
    end

    def extract_phone
        list = @contents.split(" ")
        phone = list.select {|word| word.match(/^(((\+44\s?\d{4}|\(?0\d{4}\)?)\s?\d{3}\s?\d{3})|((\+44\s?\d{3}|\(?0\d{3}\)?)\s?\d{3}\s?\d{4})|((\+44\s?\d{2}|\(?0\d{2}\)?)\s?\d{4}\s?\d{4}))(\s?\#(\d{4}|\d{3}))?$/) }
        return phone.join("")
    end

    def reading_time(wpm)
        len = @contents.split(" ").length
        time = (len.to_f/wpm).ceil
    end
end