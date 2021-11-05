# Run gofsh -o fshoutput
# create the input/pagecontent directory
# run ruby fshtomd input output output --- last directory is redundant
# output is in fshoutput/input/pagecontent -- copy into the input/pagecontent of your IG

require 'pry'
# input directory ARGV[0] -- process all files [a-z]*.fsh
# output directory ARGV[0] -- directory to place md files that include the fsh content
# output directory ARGV[2] -- directory to place md files that include the fsh content
puts "FSHInput = #{ARGV[0]}"
puts "JSONInput = #{ARGV[1]}"
puts "MDOutput = #{ARGV[2]}"
jsoninputfiles = Dir.glob("#{ARGV[1]}/*.json")
fshinputfiles = Dir.glob("#{ARGV[0]}/input/fsh/instances/*.fsh")
aliasfile = "#{ARGV[0]}/input/fsh/aliases.fsh"
aliases = {}
# build a hash from the aliases file
IO.foreach(aliasfile) do |line|
    parts = line.split(" ")
    puts "Alias: #{parts[1]} = #{parts[3]}"
    aliases[parts[1]] = parts[3]
  end
binding.pry
# Couldn't get [a-z] selection to work under any circumstance.
# So, used simple fact that a file that is all lower case will remain so when downcased
fshexamples = fshinputfiles.select{|file| file.downcase == file }
fshexamples.each { |fsh|
   fshcontent = File.read(fsh)
   # replace all of the alias strings with their expansion
   aliases.each { |key, value|
    # binding.pry
    fshcontent = fshcontent.gsub(key,value)
    # binding.pry
   }
   # binding.pry
   # Find the json file that includes the same instance name.
   # The -notes files are named like the json, which has the Resourcetype as a prefix
   # This is the easy way to figure that out
   json = jsoninputfiles.select{ |json| json.include?(fsh.split('/').last.split('.').first)}
   # binding.pry
   if (json.length > 0)   # the one file that fails this test is /fsh/instances/exp-params.fsh
    md = ARGV[2] + "/input/pagecontent/" + json[0].split('/').last.split('.').first + "-notes.md"
    mdfile = File.open(md, "w")
    mdcontent = "```\n" + fshcontent + "\n```"
   # binding.pry
     mdfile.write(mdcontent)
    mdfile.close()
   else
      puts "no json file for fsh file #{fsh}"
   end
   # binding.pry
}
