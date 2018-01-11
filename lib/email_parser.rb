# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailParser

  attr_accessor :emails, :parsed_emails

  def initialize(emails)
    @emails = emails
    @parsed_emails = []
  end

  def parse
    parsed_emails = self.emails.split(/[, ]/)
    parsed_emails.delete_if do |email|
      email == "" || email == ","
    end
    parsed_emails.uniq
    # binding.pry
  end


end
