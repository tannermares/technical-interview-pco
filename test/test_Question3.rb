require 'test/unit'
require 'question3'

class AwesomenessTest < Test::Unit::TestCase
  def test_addToPoll
    alan = Person.new
    a = Awesomeness.new
    a.addToPoll(alan)
    assert_equal a.getPersons[0], alan
    tanner = Person.new
    a.addToPoll(tanner)
    assert_equal a.getPersons[1], tanner
  end

  def test_getPersons
    a = Awesomeness.new
    assert_equal a.getPersons, []
    alan = Person.new
    a.addToPoll(alan)
    assert_equal a.getPersons[0], alan
  end

  def test_getMostAwesomePerson
    bob = Person.new
    bob.setName('bob')
    bob.setAwesomeness(12)

    brittany = Person.new
    brittany.setName('brittany')
    brittany.setAwesomeness(3)

    nancy = Person.new
    nancy.setName('nancy')
    nancy.setAwesomeness(4)

    a = Awesomeness.new
    a.addToPoll(bob)
    a.addToPoll(brittany)
    a.addToPoll(nancy)

    assert_equal a.getMostAwesomePerson, bob 
  end

  def test_getAverageAwesomeness
    bob = Person.new
    bob.setName('bob')
    bob.setAwesomeness(1)

    brittany = Person.new
    brittany.setName('brittany')
    brittany.setAwesomeness(2)

    nancy = Person.new
    nancy.setName('nancy')
    nancy.setAwesomeness(3)

    a = Awesomeness.new
    a.addToPoll(bob)
    a.addToPoll(brittany)
    a.addToPoll(nancy)

    assert_equal a.getAverageAwesomeness, 2 

    james = Person.new
    james.setName('james')
    james.setAwesomeness(4)

    juan = Person.new
    juan.setName('juan')
    juan.setAwesomeness(5)

    rick = Person.new
    rick.setName('rick')
    rick.setAwesomeness(6)

    a.addToPoll(james)
    a.addToPoll(juan)
    a.addToPoll(rick)

    assert_equal a.getAverageAwesomeness, 3
  end

  def test_getTop10AwesomePeeps
    alan = Person.new
    alan.setName('alan')
    alan.setAwesomeness(8)

    tanner = Person.new
    tanner.setName('tanner')
    tanner.setAwesomeness(9)

    bob = Person.new
    bob.setName('bob')
    bob.setAwesomeness(3)

    brittany = Person.new
    brittany.setName('brittany')
    brittany.setAwesomeness(10)

    nancy = Person.new
    nancy.setName('nancy')
    nancy.setAwesomeness(9)

    james = Person.new
    james.setName('james')
    james.setAwesomeness(5)

    juan = Person.new
    juan.setName('juan')
    juan.setAwesomeness(2)

    rick = Person.new
    rick.setName('rick')
    rick.setAwesomeness(1)

    srini = Person.new
    srini.setName('srini')
    srini.setAwesomeness(4)

    maneesh = Person.new
    maneesh.setName('maneesh')
    maneesh.setAwesomeness(8)

    jackie = Person.new
    jackie.setName('jackie')
    jackie.setAwesomeness(0)

    a = Awesomeness.new
    a.addToPoll(alan)
    a.addToPoll(tanner)
    a.addToPoll(bob)
    a.addToPoll(brittany)
    a.addToPoll(nancy)
    a.addToPoll(james)
    a.addToPoll(juan)
    a.addToPoll(rick)
    a.addToPoll(srini)
    a.addToPoll(maneesh)
    a.addToPoll(jackie)

    assert_no_match Regexp.new('jackie'), a.getTop10AwesomePeeps.inspect
    assert_match Regexp.new('alan'), a.getTop10AwesomePeeps.inspect
    assert_match Regexp.new('tanner'), a.getTop10AwesomePeeps.inspect
    assert_match Regexp.new('bob'), a.getTop10AwesomePeeps.inspect
    assert_match Regexp.new('brittany'), a.getTop10AwesomePeeps.inspect
    assert_match Regexp.new('nancy'), a.getTop10AwesomePeeps.inspect
    assert_match Regexp.new('james'), a.getTop10AwesomePeeps.inspect
    assert_match Regexp.new('juan'), a.getTop10AwesomePeeps.inspect
    assert_match Regexp.new('rick'), a.getTop10AwesomePeeps.inspect
    assert_match Regexp.new('srini'), a.getTop10AwesomePeeps.inspect
    assert_match Regexp.new('maneesh'), a.getTop10AwesomePeeps.inspect
  end
end
# Tests for Person class setters and getters
class PersonTest < Test::Unit::TestCase
  def test_setName
    tanner = Person.new
    tanner.setName('tanner')
    assert_equal 'tanner', tanner.name
  end
  def test_setAwesomeness
    tanner = Person.new
    tanner.setAwesomeness(100)
    assert_equal 100, tanner.awesomeness
  end
  def test_name
    tanner = Person.new
    tanner.setName('tanner')
    assert_equal 'tanner', tanner.name
  end
  def test_awesomeness
    tanner = Person.new
    tanner.setAwesomeness(100)
    assert_equal 100, tanner.awesomeness
  end
end