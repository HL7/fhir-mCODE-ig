require "json"
require "pry"
require "roo"

def get_file_type(file)
  File.extname(file).gsub(".", "")
end

def open_spreadsheet(file)
  extension = get_file_type(file)
  if ["csv", "xls", "xlsx"].include? extension
    Roo::Spreadsheet.open(file, extension: extension)
  else
    raise "Unknown file type: #{file}"
  end
end

IJEField = 0
IJEBegin = 1
IJELength = 2
Description = 3
IJEName = 4
CodeStructureDescription = 5
IJEOnly = 6
Profile = 7
FHIRField = 8
FHIRType = 9
FHIREncoding = 10

puts ARGV[0]

xlsx = open_spreadsheet(ARGV[0])
xlsx.default_sheet = "Mortality"
filename = "generated/IJE_annotations.txt"
puts filename
fullout = File.open(filename, "w")
# [IJEField(7, 27, 50, "Decedent's Legal Name--Given", "GNAME", 1)]
  xlsx.each_row_streaming do |row|
#    next if row[Profile] == "nil || row[Profile].value != key"
    field = fbegin = flength = description = ijename = profile = fhirfield = fhirtype = fhirencoding = ijeonly = ""
    # next if field == nil || field == ""
    field = row[IJEField].value.to_s if row[IJEField]
    fbegin = row[IJEBegin].value.to_s if row[IJEBegin]
    flength = row[IJELength].value.to_s if row[IJELength]
    ijename = row[IJEName].value.to_s if row[IJEName]
    description = row[Description].value.to_s if row[Description]
    fullout.puts "[IJEField(" + field + "," + fbegin + ","  + flength + "," + description + "," + ijename + ", 1)]"
  end

  fullout.close
