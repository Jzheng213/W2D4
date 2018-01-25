class MaxMinQueue
  
  def initialize
    @store = []
    @max = nil
    @min = nil
  end
  
  def queue(n)
    store.push(n)
  end
  
  def enqueue
    store.shift
  end
  
  def size
    store.length
  end
  
  def empty?
    store.empty?
  end
  
  def max
    max
  end
  
  def min
    min
  end
  private 
  attr_accessor :store
  attr_writer :max, :min
end


if __FILE__ == $PROGRAM_NAME
  
end

