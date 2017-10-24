# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailParser
  attr_accessor :emails
  @@all =[]

  def self.all
    @@all
  end

  def initialize(emails)
    @emails = emails
  end

  def parse
   emails = @emails.split(/\s*,|\s/)
   emails.uniq.delete_if {|email| email.empty?}
  end

end
