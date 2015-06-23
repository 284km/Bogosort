require "Bogosort/version"

module Bogosort
  # Your code goes here...
end

class Array
  def bogosort
    until self.sorted?
      self.shuffle!
    end
    self
  end

  def sorted?
    return true if self.size < 2
    1.upto(self.size - 1) do |i|
      return false unless self[i - 1] <= self[i]
    end
    true
  end
end
