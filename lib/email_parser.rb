# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailParser
attr_accessor :parse



def initialize(parse)
final = []
arr = parse.gsub(/\,/,"").split(" ")
arr.each do |email|
  final.push(email.strip)
end
@parse = final.uniq



end









end
