class Counter
    def initialize
        @count = 0
    end

    def add(num)
        @count += num
        @count += 1
    end

    def report
        return "Counted to #{@count} so far."
    end

end