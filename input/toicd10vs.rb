puts ARGV[0]
File.open(ARGV[0], "r").each_line do |line|
    data = line.split(/\t/)
    puts "* ICD10#" + data[0].chomp + " \"" + data[1].chomp + "\""
  end