# run ._genonce.sh
# cd ../CapStatement
# python3 R4CapStatement_NarrativeMaker.py CapabilityStatement-CodexRTServerCapabilityStatement.json ../Codex-Radiation-Therapy/output
# ruby transferdiv.rb <json file with narrative in text.div> <fsh file to be updated> <new fsh file>
# ruby tools/transferdiv.rb ../CapStatement/Narrative-CapabilityStatement-CodexRTServerCapabilityStatement.json input/fsh/DEF_CapStmt.fsh DEF_CapStmt.fsh

# NOTE:  This script assumes there is a single text.div in your FSH file and that it is for the Capability Statement.
#        If you don't have a text.div, add the following within your CapSTmt:   '* text.div = ""'

require "json"
require "byebug"

file = File.read(ARGV[0])
data_hash = JSON.parse(file)

newtext = data_hash["text"]["div"]
output = File.open(ARGV[2], 'w')

File.foreach(ARGV[1]).with_index do |line, line_num|
    if (line.include? "* text.div = ") then
        output.write("* text.div = #{newtext.dump}\n")
    else
        output.puts "#{line}"
    end
 end