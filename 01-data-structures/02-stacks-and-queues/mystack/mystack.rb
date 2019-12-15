class MyStack
  attr_accessor :top

  def initialize
    @stack = Array.new
    self.top = nil
  end

  def push(item)
    self.top = item
    @stack.push(item)
  end

  def pop
    popped = self.top
    @stack = @stack - [self.top]
    self.top = @stack.last
    popped
  end

  def empty?
    @stack.length<=0
  end
end
