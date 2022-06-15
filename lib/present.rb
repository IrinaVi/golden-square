class Present
    #this function assaigns the given argument to the instance variable and not supposed to be called twice
    #UNLESS runs if the statement is false.
    #the function is supposed to fail when @contents already exist. @contents.nil? will return false for any string. 
    #But true for nil - when @contents doesn't exist
    #when it runs first time @contents is empty
    def wrap(contents)
      fail "A contents has already been wrapped." unless @contents.nil?
      @contents = contents
    end
  
    def unwrap
      fail "No contents have been wrapped." if @contents.nil?
      return @contents
    end
  end