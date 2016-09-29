require 'pry'

class EmailParser
  attr_accessor :parse
  def initialize(emails)
    @emails = emails
  end

  def csv
    temp_parse = @temp_parse.split(", ").uniq
  end

  def spaces(no_commas)
    temp_parse = no_commas.split(" ").uniq
  end

  def parse
    @temp_parse = @emails
    return spaces(csv.join(" "))
  end

end
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
