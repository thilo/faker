begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "faker"
    gemspec.summary = "A port of Perl‘s Data::Faker library that generates fake data."
    gemspec.description = "Faker, a port of Data::Faker from Perl, is used to easily generate fake data: names, addresses, phone numbers, etc. The port was motivated by a need for a bunch of fake data to make good-looking screenshots for Catch the Best. :)"
    gemspec.email = "ben@bencurtis.com"
    gemspec.homepage = "http://faker.rubyforge.org/"
    gemspec.authors = ["Benjamin Curtis"]
    gemspec.rubyforge_project = "http://faker.rubyforge.org/"
  end
rescue LoadError
  puts "Jeweler not available. Install it with: gem install jeweler"
end

Dir['tasks/**/*.rake'].each { |rake| load rake }