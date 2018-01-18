require 'pry'

# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


# emails = "john@doe.com, person@somewhere.org"
# parser = EmailParser.new(emails)
#
# parser.parse
# # => ["john@doe.com", "person@somewhere.org"]

class EmailParser

  attr_accessor :string

  def initialize(string)
    @string = string
  end

  def parse
    finished_array = []

    comma_split = string.split(", ").uniq

    comma_split.each do |string|
      if string.include?(" ")
         finished_array << string.split(" ")
      else
        finished_array << string
      end
    end
    finished_array.flatten
  end

end

  #
  #   if comma_split.map {|email| email.include?(" ")}.uniq.first
  #     #binding.pry
  #   if comma_split.map {|email| email.include?(" ")}.uniq.first
  #
  #   else
  #     comma_split
  #   end
  #
  # end

# EmailParser.new(@space).parse
#   => ["avi@test.com arel@test.com"]
# EmailParser.new(@commas).parse
#   => ["avi@test.com", "arel@test.com"]
# EmailParser.new(@commas_spaces).parse
#   => ["avi@test.com", "arel@test.com test@avi.com", "test@arel.com"]
# EmailParser.new(@duplicates).parse
#   => ["avi@test.com"]


@commas = ("avi@test.com, arel@test.com")
@space = ("avi@test.com arel@test.com")
@commas_spaces = ("avi@test.com, arel@test.com test@avi.com, test@arel.com")
@duplicates = ("avi@test.com, avi@test.com")


#pry.start
