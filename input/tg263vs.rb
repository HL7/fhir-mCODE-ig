require 'roo'
require 'pry'
puts ARGV[0]

workbook = Roo::Spreadsheet.open ARGV[0]
worksheets = workbook.sheets
puts "Found #{worksheets.count} worksheets"
worksheet = "Sheet1"
  puts "Reading: #{worksheet}"
  num_rows = 0
  unique = {}
  workbook.sheet(worksheet).each_row_streaming(pad_cells:true) do |row|
    next if row[10].empty?
    code = row[10].value
    display = !row[11].empty? ? row[11].value :  "<none>"
    anatomy = !row[8].empty? ? row[8].value :  "<none>"
    if unique[code] == nil
        puts "* SCT\##{code} \"#{display}\" // #{anatomy}"
        unique[code] = 1;
        num_rows += 1
    end
  end
  puts "Read #{num_rows} rows"
