require_relative './stack'

class MyQueue

    def initialize
        @s1 = Stack.new
        @s2 = Stack.new
    end

    def peek
        @s2.peek    
    end
    
    def add(value)
        @s2.empty? ? @s2.push(value) : @s1.push(value)
    end
    
    def remove
        @s2.pop
        @s2.push(@s1.peek)
        @s1.pop
        @s2.peek
    end
end
