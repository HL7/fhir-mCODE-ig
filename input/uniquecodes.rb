require 'pry'
File.open(ARGV[0], "r").each_line do |line|
    next if line[0] != '*'
    words = line.split(/ /)
    quotes = line.split(/\"/)
    next if words[1].eql?("^copyright")
    next if words[1].eql?("includes")
    next if words[1].eql?("include")
    next if words[1].eql?("exclude")
    concept = words[1].split('#')
    puts concept[0] + "\t" + concept[1] + "\t" + quotes[1]
  end