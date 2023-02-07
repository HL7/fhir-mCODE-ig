
modality = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality'
technique = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique'
sct = 'http://snomed.info/sct'


File.open(ARGV[0], "r").each_line do |line|
    next if line[0] == "#"
    data = line.split(/;/)
    name = data[0];
    description = data[1]
    modality_code = data[2]
    technique_codes = data[3]
    puts "Invariant: #{name}"
    puts "Description:  \"#{description}\""
    puts "Expression: \"extension.where(url = \'#{modality}\').exists() and"
    puts   "         extension.where(url = \'#{technique}\').exists() and"
    puts   "         extension.where(url = \'#{modality}\').value.exists(coding.system = \'#{sct}\' and coding.code = \'#{modality_code}\')"
    puts   "   implies "
    puts   "         extension.where(url = \'#{technique}\').value.exists(coding.system = \'#{sct}\' and ("
    codearray = technique_codes.split(",")
    codestring = codearray.map {|code|
       "coding.code = \'#{code}\'"}.join(" or ")
    puts   "          #{codestring}))\""
    puts   "Severity: #error"


  end

# Invariant: TechniquesForNeutronBeamModality
# Description:  "Allowed Techniques for Proton Beam Modality"
# Expression: "extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').exists() and
#              extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').exists() and
#              extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').value.exists(coding.system = 'http://snomed.info/sct' and coding.code = '80347004')
#              implies
#              extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').value.exists(coding.system = 'http://snomed.info/sct' and (coding.code = '169317000' or coding.code = '1162782007'))"
# Severity: #error
