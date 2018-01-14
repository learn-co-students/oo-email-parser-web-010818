# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailParser

  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  #parse multiple emails to not include extraneous info
  #split string up
  #iterate through string
  #eliminate crap like spaces or commas
  #collect into own string
  def parse
    @emails.split().collect do |email|
    email.split(",")
  end.flatten.uniq
  end

end
