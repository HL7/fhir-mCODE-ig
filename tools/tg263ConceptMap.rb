#  Create a Concept Map from the TG263 Spreadsheet
# ruby tools/tg263ConceptMap.rb input/images/TG263_Nomenclature_to_SNOMEDCT_Codes_and_Qualifiers.xlsx  > <output file>

#        G                      H                     I            J         K                   L
# TG263-Primary Name,	TG-263-Reverse Order Name,	Description,	FMAID,	SNOMED-CT Code,	SNOMEDCT Term	Qualifiers
require 'roo'
require 'pry'

lookup = {
  "left" => "#7771000",
  "right" => "#24028007",
  "right+left" => "#51440002",
  "middle" => "#260528009",
  "upper" => "#261183002",
  "lower" => "#261122009",
  "central" => "#26216008",
  "superior" => "#264217000",
  "inferior" => "#261089000",
  "internal" => "#260521003",
  "external" => "#261074009",
  "multiple" => "#255204007",   # missing from qualifier value set
  "proximal" => "#40415009",
  "non-adjacent" => "#1217011006",
  "distal" => "#46053002",
  "surface" => "#410679008",
  "level 1" => "#277733009",
  "level 2" => "#277734003",
  "level 3" => "#277735002",
  "core" => "#260235002",
  "level I" => "#258400004",      # missing from qualifier value set due to Terminology Issue.
  "level ia" => "#1162616006",
  "level ib" => "#1162617002",
  "level ii" => "#258401000",
  "level iia" => "#USCRS-34777",            # missing from qualifier value set and SNOMEDCT
  "level iib" => "#USCRS-34775",            # missing from qualifier value set and SNOMEDCT
  "level iii" => "#258402007",
  "level iv" => "#258403002",           # missing from qualifier value set due to Terminology Issue.
  "level v" => "#258404008",            # missing from qualifier value set due to Terminology Issue.
  "level va" => "#1162622002",
  "level vb" => "#1162623007",
  "level vc" => "#1162624001",
  "level vi" => "#258405009",           # missing from qualifier value set due to Terminology Issue.
  "level vii" => "#395168005",          # missing from qualifier value set due to Terminology Issue.
  "level viia" => "#1162628003",
  "level viib" => "#1162627008",
  "level viii" => "#1162618007",
  "level ix" => "#1162619004",
  "level x" => "#1162614009",
  "level xa" => "#1162615005",
  "level xb" => "#1162613003"
}

# puts ARGV[0]
def isLateralityQualifier(qualifier)
  return(qualifier.downcase.include?("left") || qualifier.downcase.include?("right") )
end
workbook = Roo::Spreadsheet.open ARGV[0]
worksheets = workbook.sheets
worksheet = "Mapped TG263 Terms"
  num_rows = 0
  unique = {}
  puts "Instance: TG263CM"
  puts "InstanceOf: ConceptMap"
  puts "Usage: #definition"
  puts "* experimental = false"
  puts "* insert ConceptMapIntro(TG263, RadiotherapyTreatmentLocationQualifierVS)"

  header = true
  localcodes = ""
  localtable = ""
  snomedcodes = ""
  table = ""
  workbook.sheet(worksheet).each_row_streaming(pad_cells:true) do |row|
    if header == true  # Skip first row
      header = false
      next
    end
    next if row[10] == nil || row[10].empty?
    tg263primary = "#"+row[6].value.strip
    tg263description = row[8].value.gsub(")","\\)").gsub(",","\\,").strip if row[8].value != nil
    code = "#" + row[10].value.to_s.strip
    term = row[11].value.gsub(")","\\)").gsub(",","\\,").strip
    if row[12] && !row[12].empty?
      qualifiers = row[12].value.split(',')
      if qualifiers.length == 2
        qualifier1 = qualifiers[0].strip # first qualifier is always laterality
        qualifier2 = qualifiers[1].strip # second qualifier is always non-laterality
        qualifiercode1 = lookup[qualifier1.downcase.strip]
        puts "GORK1: qualifier code1 = #{qualifier1}" if qualifiercode1 == nil
        qualifiercode1display = qualifier1 + " (qualifier value\\)";
        qualifiercode2 = lookup[qualifier2.downcase.strip]
        puts "GORK2: qualifier code2 = #{qualifier2}" if qualifiercode2 == nil
        qualifiercode2display = qualifier2 + " (qualifier value\\)";
        if qualifiercode2.include?("USCRS")
          system = "SCT_TBD"
        else
          system = "SCT"
        end
        snomedcodes.concat("* insert MapConceptQualifier2(#{tg263primary}, \"#{tg263description}\", #{code}, \"#{term}\", #{qualifiercode1}, \"#{qualifiercode1display}\", #{qualifiercode2}, \"#{qualifiercode2display}\", #{system})\n")
        table.concat("|#{row[6].value}| #{row[8].value} | &#8594; |  #{code.gsub("#","")} |  #{term.gsub("\\","")} | #{qualifiercode1.gsub("#","")}| #{qualifiercode1display.gsub("\\","")}| #{qualifiercode2.gsub("#","")}| #{qualifiercode2display.gsub("\\","")} |\n")
      else
        qualifier1 = row[12].value.strip
        qualifiercode1display = qualifier1 + " (qualifier value\\)";
        qualifiercode1 = lookup[qualifier1.downcase.strip]
        puts "GORK1: qualifier code1 = #{qualifier1}" if qualifiercode1 == nil
        if qualifiercode1.include?("USCRS")
          system = "SCT_TBD"
        else
          system = "SCT"
        end
        if (isLateralityQualifier(qualifier1))
          rule = "MapConceptLateralityQualifier"
          table.concat("|#{row[6].value}| #{row[8].value} | &#8594; | #{code.gsub("#","")} |  #{term.gsub("\\","")} | #{qualifiercode1.gsub("#","")}| #{qualifiercode1display.gsub("\\","")}| | |\n")
        else
          rule = "MapConceptLocationQualifier"
          table.concat("|#{row[6].value}| #{row[8].value} | &#8594; | #{code.gsub("#","")} |  #{term.gsub("\\","")} | | |#{qualifiercode1.gsub("#","")}| #{qualifiercode1display.gsub("\\","")}|\n")
        end
        snomedcodes.concat("* insert #{rule}(#{tg263primary}, \"#{tg263description}\", #{code}, \"#{term}\", #{qualifiercode1}, \"#{qualifiercode1display}\", #{system})\n")
      end
    else
      if code.include?("USCRS")
        localcodes.concat( "* insert MapConcept(#{tg263primary}, \"#{tg263description}\", #{code}, \"#{term}\" )\n")
      else
       snomedcodes.concat( "* insert MapConcept(#{tg263primary}, \"#{tg263description}\", #{code}, \"#{term}\")\n")
      end
      table.concat("|#{row[6].value}| #{row[8].value} | &#8594; | #{code.gsub("#","")} |  #{term.gsub("\\","")} | | | | |\n")
    end
  end
  puts "* insert AddGroup(\"TG263\",SCT)"
  puts snomedcodes
  puts "* insert AddGroup(\"TG263\",SCT_TBD)"
  puts localcodes
  puts table