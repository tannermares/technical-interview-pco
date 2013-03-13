# Create a ruby class that takes an array of objects with the properties of name[String] & awesomeness[Integer]. 
# Make the class be able to tell you, the most awesome person, 
# the average awesomeness and print out a list of the top 10 awesome people. Make sure to include tests. 
# (http://www.ruby-doc.org/core-1.9.3/Enumerable.html)
require 'enumerator'

class Awesomeness
  
  include Enumerable  

  attr_accessor :name
  attr_accessor :awesomeness

  def initialize(name, awesomeness)
    @name = name   
    @awesomeness = awesomeness 
  end
  
  def each &block  
    @name.each do |person|
      if block_given?
        block.call person
      else  
        yield person
      end
    end  
  end

  def <=>(other)
    @awesomeness <=> other.awesomeness
  end
end