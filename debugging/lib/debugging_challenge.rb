def get_most_common_letter(text)
    counter = Hash.new(0)
    text.chars.each do |char|
      counter[char] += 1 if char != " "
    end
    counter.sort_by { |k, v| -v }[0][0]
  end