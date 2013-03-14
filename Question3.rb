# Create a ruby class that takes an array of objects with the properties of name[String] & awesomeness[Integer]. 
# Make the class be able to tell you, the most awesome person, 
# the average awesomeness and print out a list of the top 10 awesome people. Make sure to include tests. 
class Awesomeness
    def initialize
    @persons = []
  end
  # Add person to persons attribute only if person is a Person
  def addToPoll(person)
    @persons << person if person.instance_of?(Person)
  end
  # Return persons property
  def getPersons
    return @persons
  end
  # Create a new hash, loop through all persons, 
  # if current person being checked is higher than last person, set as new highest person.
  # return most awesome person
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
  # Loop through each person and sum their awesomeness
  # return the sum divided by number of people
  def getAverageAwesomeness
    sum = 0
    @persons.each do |person|
      sum += person.awesomeness.to_i
    end
    return sum/@persons.length
  end
  # Use destructive sort method to sort the persons array by awesomeness.
  # Return the last ten values of the array
  def getTop10AwesomePeeps
    @persons.sort! do |a, b|
      a.awesomeness.to_i <=> b.awesomeness.to_i
    end
    return @persons[-10..-1]
  end
end
# Person class - used to store name and awesomeness of each person.
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