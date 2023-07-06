require_relative './stack'

class MyQueue

    def initialize
        @s1 = Stack.new
        @s2 = Stack.new
    end

    def peek
        until @s1.empty? do
            @s2.push(@s1.pop)
        end
        @s2.peek
    end
    
    def add(value)
        @s1.push(value)
    end

    def remove
        until @s1.empty? do
            @s2.push(@s1.pop)
        end
        @s2.pop
    end

end
