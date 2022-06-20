class Todo
    def initialize(task) 
        @task = task
        @done = []
    end
  
    def task
        @task
    end
  
    def mark_done!
        @done << task
    end
  
    def done?
        @done.include?(task)
    end
  end