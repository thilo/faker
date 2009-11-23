module Faker
  class Isbn
    class << self
      def isbn_10
        isbn_without_checksum = Faker.numerify('#-#####-###-')
        isbn_without_checksum + checksum_10(isbn_without_checksum).to_s
      end
      
      def isbn_13
        isbn_without_checksum = Faker.numerify('978-#-####-####-')
        isbn_without_checksum + checksum_13(isbn_without_checksum).to_s
      end
      
      private
      
      def checksum_10(isbn)
        _isbn = digits(isbn)
        sum = (0..8).inject(0) {|sum, i| sum += _isbn[i,1].to_i * (i+1)} % 11
        sum == 10 ? 'X' : sum
      end
      
      def checksum_13(isbn)
        _isbn = digits(isbn)
        sum = (0..11).inject(0) { |sum, i| sum += ((i+1) % 2 == 0 ? _isbn[i,1].to_i*3 : _isbn[i,1].to_i) }
        (10 - sum) % 10
      end
      
      def digits(isbn)
        isbn.scan(/\d/).join
      end
    end
  end
end
