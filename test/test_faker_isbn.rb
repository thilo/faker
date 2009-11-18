require File.dirname(__FILE__) + '/test_helper.rb'

class TestFakerIsbn < Test::Unit::TestCase
  def setup
    @tester = Faker::Isbn
  end
  
  def test_isbn_10_has_correct_format
    assert @tester.isbn_10.match(/^\d{1}-\d{5}-\d{3}-[\dX]$/)
  end
  
  def test_faker_isbn_10_calculates_correct_checksum
    Faker.stubs(:numerify).returns '3-86680-192-'
    assert_equal '3-86680-192-0', @tester.isbn_10
  end
  
  def test_faker_isbn_replacs_a_checksm_of_10_with_an_x
    Faker.stubs(:numerify).returns '8-90476-338-'
    assert_equal "8-90476-338-X", @tester.isbn_10
  end
  
  def test_isbn_13_has_correct_format
    assert @tester.isbn_13.match(/^\d{3}-\d{1}-\d{4}-\d{4}-\d$/)
  end

  def test_faker_isbn_13_calculates_correct_checksum
    Faker.stubs(:numerify).returns '978-3-7657-2781-'
    assert_equal '978-3-7657-2781-8', @tester.isbn_13
  end
end