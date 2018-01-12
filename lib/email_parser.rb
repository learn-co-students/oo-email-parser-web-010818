# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailParser
  attr_accessor :emails

  def initialize(string_of_emails)
    @emails = string_of_emails
  end

  def parse
    email_array = @emails.split(/[\s,]/)
    email_array.uniq!
    email_array.reject! do |s|
      s.empty?
    end
    email_array
  end

end
