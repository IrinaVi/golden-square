class GrammarStats
    def initialize
      @total_tests = 0
      @passed_tests = 0
    end
  
    def check(text)
      fail "No text was provided" if text.empty?
      pass = text[0] == text[0].upcase && text[text.length-1] == "."
      @passed_tests += 1 if pass
      @total_tests +=1
      return pass
    end
  
    def percentage_good
      fail "No tests were done" if @total_tests == 0
      (@passed_tests.to_f/@total_tests)*100
    end
  end