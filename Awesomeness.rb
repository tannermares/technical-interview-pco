# Create a ruby class that takes an array of objects with the properties of name[String] & awesomeness[Integer]. 
# Make the class be able to tell you, the most awesome person, 
# the average awesomeness and print out a list of the top 10 awesome people. Make sure to include tests. 
class Awesomeness
    def initialize
    @persons = []
  end

  def addToPoll(person)
    @persons << person if person.instance_of?(Person)
  end

  def getPersons
    return @persons
  end

  def getMostAwesomePerson
    mostAwesomePerson = Hash.new
    mostAwesomePerson[:name] = nil
    mostAwesomePerson[:awesomeness] = 0
    @persons.each do |person|
      if person.awesomeness > mostAwesomePerson[:awesomeness].to_i
        mostAwesomePerson[:name] = person.name
        mostAwesomePerson[:awesomeness] = person.awesomeness.to_i
      end
    end
    return mostAwesomePerson
  end

  def getAverageAwesomeness
    sum = 0
    @persons.each do |p|
      sum += p.awesomeness.to_i
    end
    return sum/@persons.length
  end

  def getTop10
    @persons.sort! do |a, b|
      a.awesomeness.to_i <=> b.awesomeness.to_i
    end
    return @persons[@persons.length-10..@persons.length-1]
  end
end

class Person
  def initialize
    @name = nil
    @awesomeness = 0
  end

  def setName(name)
    @name = name.to_s
  end

  def setAwesomeness(number)
    @awesomeness = number.to_i
  end

  def name
    return @name
  end

  def awesomeness
    return @awesomeness
  end
end