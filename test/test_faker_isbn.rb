require File.dirname(__FILE__) + '/test_helper.rb'

class TestFakerIsbn < Test::Unit::TestCase
  def setup
    @tester = Faker::Isbn
  end
  
  def test_isbn_10_has_correct_format
    assert @tester.isbn_10.match(/\d{1}-\d{5}-\d{3}-[\dX]/)
  end

  def test_faker_isbn_10_calculates_correct_checksum
    Faker.stubs(:numerify).returns '3-86680-192-'
    assert_equal '3-86680-192-0', @tester.isbn_10
  end

  def test_faker_isbn_10_calculates_correct_checksum
    Faker.stubs(:numerify).returns '3-86680-192-'
    assert_equal '3-86680-192-0', @tester.isbn_10
  end
  
  def test_faker_isbn_replacs_a_checksm_of_10_with_an_x
    Faker.stubs(:numerify).returns '8-90476-338-'
    assert_equal "8-90476-338-X", @tester.isbn_10
  end
end