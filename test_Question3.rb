require 'test/unit'


class AwesomenessTest < Test::Unit::TestCase
  def test_addToPoll
    alan = Person.new
    a = Awesomeness.new
    a.addToPoll(alan)
    assert_equal(a.getPersons, alan)
  end

  def test_getPersons

  end

  def test_getMostAwesomePerson

  end

  def test_getAverageAwesomeness

  end

  def test_getTop10AwesomePeeps

  end
end

class PersonTest < Test::Unit::TestCase

  def test_setName

  end

  def test_setAwesomeness

  end

  def test_name

  end

  def test_awesomeness

  end
end


# alan = Person.new
# alan.setName('Alan')
# alan.setAwesomeness(1)

# phil = Person.new
# phil.setName('phil')
# phil.setAwesomeness(-2)

# tanner = Person.new
# tanner.setName('tanner')
# tanner.setAwesomeness(20)

# bob = Person.new
# bob.setName('bob')
# bob.setAwesomeness(12)

# brittany = Person.new
# brittany.setName('brittany')
# brittany.setAwesomeness(3)

# nancy = Person.new
# nancy.setName('nancy')
# nancy.setAwesomeness(4)

# james = Person.new
# james.setName('james')
# james.setAwesomeness(5)

# juan = Person.new
# juan.setName('juan')
# juan.setAwesomeness(6)

# rick = Person.new
# rick.setName('rick')
# rick.setAwesomeness(7)

# srini = Person.new
# srini.setName('srini')
# srini.setAwesomeness(2)

# maneesh = Person.new
# maneesh.setName('maneesh')
# maneesh.setAwesomeness(0)

# jackie = Person.new
# jackie.setName('jackie')
# jackie.setAwesomeness(11)

# a = Awesomeness.new
# a.addToPoll(alan)
# a.addToPoll(phil)
# a.addToPoll(tanner)
# a.addToPoll(bob)
# a.addToPoll(brittany)
# a.addToPoll(nancy)
# a.addToPoll(james)
# a.addToPoll(juan)
# a.addToPoll(rick)
# a.addToPoll(srini)
# a.addToPoll(maneesh)
# a.addToPoll(jackie)

# puts a.getTopPerson
# puts a.getAverageAwesomeness
# topten = a.getTop10
# topten.each { |x| puts x.inspect }