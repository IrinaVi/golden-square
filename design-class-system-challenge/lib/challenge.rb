=begin
    
1. Description
As a user
So that I can record my experiences
I want to keep a regular diary

As a user
So that I can reflect on my experiences
I want to read my past diary entries

As a user
So that I can reflect on my experiences in my busy day
I want to select diary entries to read based on how much time I have and my reading speed

As a user
So that I can keep track of my tasks
I want to keep a todo list along with my diary

As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in all my diary entries

diary: keep, read, select entries based on how much time i have & reading speed, keep track of contacts, see a list of contacts
todo list: keep track

    

┌─────────────────────────────┐              ┌────────────────────────────────┐
│                             │              │                                │
│ DiaryEntry                  │              │   Diary                  │
│                             │              │                                │
│ - entry                     │              │   - add entry                  │
│                             │              │                                │
│ - reading time              │◄─────────────┤   - all entries                │
│                             │              │                                │
│ - extract phone number      ├─────────────►│   - all phone numbers          │
│                             │              │                                │
│                             │              │   - entry based on minutes&speed
│                             │              │                                │
└─────────────────────────────┘              └────────────────────────────────┘



 ┌─────────────────────────────┐
 │                             │
 │  TodoList                   │
 │                             │
 │  -initialize(content)       │
 │                             │
 │  - list(all entries)        │
 │                             │
 │                             │
 │                             │
 │                             │
 └─────────────────────────────┘


 2. Interface

=end

class DiaryEntry
    def initialize(contents)
    end

    def one_entry
        #returns the contents
    end

    def extract_phone
        #checks if the entry has a phone number
        #returns phone number if it is in the contents or nothing
    end

    def reading_time(wpm)
        #return time(in minutes) required to read the diary entry
    end
end

class Diary
    def initialize
        #initialises an empty array
    end

    def add(entry)
        #adds one entry to the list
    end

    def list
        #returns all entries in a list
    end

    def phone_numbers
        #returns all phone numbers from all entries in a list
    end

    def best_entry_to_read(wpm,minutes)
        #requires arguments - time and reading speed
        #returns the diary entries based on time and reading speed
    end
end

class TodoList
    def initialize(todo)
    end

    def add()
        #adds all todos to a list
    end

    def list
        #returns all todos in a list
    end
end

