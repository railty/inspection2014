require "rexml/document"

class String
  def to_bool
    return true if self == true || self =~ (/(true|t|yes|y|1)$/i)
    return false if self == false || self.blank? || self =~ (/(false|f|no|n|0)$/i)
    raise ArgumentError.new("invalid value for Boolean: \"#{self}\"")
  end
end

#so the attribute should be define as
#name
#value
#foreign_key
#group, map to Tab, for now, just 1 level
#visible
#readonly
#required
#type, this will follow the html5 input type, could be 
  #text
  #number
  #date --->yyyy-mm-dd
  #month -->yyyy-mm
  
  
  
  #string, could be
    #single line
    #multiple line
  #interger
  #float
  #datetime, couble be 
    #year
    #year month
    #year month day
    #year month day hour minute second
  #radio box (select one)
  #check box (select more than one)
  #dropdown could be 
    #single selection
    #single selection with combo
    #multiple selection
    #multiple selection with combo
def read_template(filename)
  doc = REXML::Document.new(File.read(filename, encoding: "ISO8859-1"))

  #<NamedSketch Name="Padmount Transformer" xmlns="urn:HexMobileClient.xsd"><Properties><Property Name="Category" Type="string" Value="Inspect" /><Property Name="Repeating" Type="integer" Value="1" /></Properties><Symbol ViewScaleDependent="2" MapScale="500" SymbolFontName="GMLINK" SymbolSize="36" SymbolColor="9109504" SymbolValue="H" SymbolAlignment="0"><Properties><Property Name="SelectFeature" Type="string" Value="314" /><Property Name="Required" Type="integer" Value="1" /><Property Name="Prompt" Type="string" Value="Select Padmount Transformer for Inspection" /><Property Name="+Feature Key" Type="{ReadOnly=True;Number=Location}" Value="" /><!-- Below extracted from generateGMobileLinkAttrib tool --><Property Name="+Location" Type="{Tab=TX Info;Type=string;Ano=314600026;Required=True;ReadOnly=True;HEX_required=1}" Value="{Ano=314010002}" /><Property Name="+Inspected by" Type="{Tab=TX Info;Type=string;Ano=314600027}" Value="" /><Property Name="+Street Number" Type="{Tab=TX Info;Type=string;Ano=314600028}" Value="{Ano=310019}" /><Property Name="+Street Name" Type="{Tab=TX Info;Type=string;Ano=314600029}" Value="{Ano=310020}" /><Property Name="+Location Info" Type="{Tab=TX Info;Type=string;Ano=314600030;Items=Front Lot,Rear Lot,Side Lot,Below Grade,Above Grade,Inside Building,Other (see notes)}" Value="" /><Property Name="+Control Number" Type="{Tab=TX Info;Type=string;Ano=314600031}" Value="" /><Property Name="+Transformer Type" Type="{Tab=TX Info;Type=string;Ano=314600032}" Value="{Ano=314010012}" /><Property Name="+Serial Number" Type="{Tab=TX Info;Type=string;Ano=314600033}" Value="" /><Property Name="+Manufacturer" Type="{Tab=TX Info;Type=string;Ano=314600034;Items=3M,ABB,ACME,ALLIANCE,APB,ASEA BROWN BOVERI,BEFCO,BEPCO,BROWN,BROWN BOVERI,CAM TRAN,CANADIAN ELECTRICAL SERVICES,CANADIAN GENERAL ELECTRIC,CANSFIELD,CANSFIELD ELECTRIC,CARTE,CARTIER,CES,CGE,COLMAN,COMMONWEALTH,COMMONWEALTH EDISON,CW,ENGLISH ELECTRIC,EP ,ERMCO,FEDERAL PIONEER,FERRANTI PACKARD,FOSTER,GENERAL ELECTRIC,GRAFTON UTILITY,H K PORTER,H.E.P.C.,HAMMOND MFG.,HAWKER SIDDLEY,JIMS ELECTRIC,JOSLYAN,KUHLMAN,MARKHAM ELECTRIC,MCGRAW,MCGRAW EDISON,MOLONEY,N/A,NORELCO,NORRACO,NORTH,NORTHERN ELECTRIC,ONAN,OTHER,PACKARD BELL,PAWEL,PIONEER ELECTRIC,PIRELLI,PLYGN,PORTER,R.T.E.,RELIANCE,RTE,SCHNEIDER CANADA,SIEMANS,SQUARE D,SUPREME ELECTRIC,SUPREME POWER,SURELCO,T &amp; R ELECTRIC,TRANSCANADA,TRANSELECTRIX,UNKNOWN,VOLTA WERK,WESTINGHOUSE,WODEN}" Value="" /><Property Name="+Manufacturer Date" Type="{Tab=TX Info;Type=string;Ano=314600035}" Value="" /><Property Name="+KVA" Type="{Tab=TX Info;Type=string;Ano=314600036}" Value="{Ano=314010004}" /><Property Name="+Impedance" Type="{Tab=TX Info;Type=string;Ano=314600037}" Value="" /><Property Name="+Primary Voltage 1" Type="{Tab=TX Info;Type=string;Ano=314600038}" Value="" /><Property Name="+Primary Voltage 2" Type="{Tab=TX Info;Type=string;Ano=314600039}" Value="" /><Property Name="+Secondary Voltage 1" Type="{Tab=TX Info;Type=string;Ano=314600040}" Value="" /><Property Name="+Secondary Voltage 2" Type="{Tab=TX Info;Type=string;Ano=314600041}" Value="" /><Property Name="+PCB" Type="{Tab=TX Info;Type=string;Ano=314600042}" Value="" /><Property Name="+Phase" Type="{Tab=TX Info;Type=string;Ano=314600043}" Value="{Ano=300003}" /><Property Name="+Control Number (VT 1)" Type="{Type=string;Ano=314600044;Visible=False}" Value="" /><Property Name="+Transformer Type (VT 1)" Type="{Type=string;Ano=314600045;Visible=False}" Value="" /><Property Name="+Serial Number (VT 1)" Type="{Type=string;Ano=314600046;Visible=False}" Value="" /><Property Name="+Manufacturer (VT 1)" Type="{Type=string;Ano=314600047;Visible=False}" Value="" /><Property Name="+Manufacturer Date (VT 1)" Type="{Type=string;Ano=314600048;Visible=False}" Value="" /><Property Name="+KVA (VT 1)" Type="{Type=string;Ano=314600049;Visible=False}" Value="" /><Property Name="+Impedance (VT 1)" Type="{Type=string;Ano=314600050;Visible=False}" Value="" /><Property Name="+Primary Voltage 1 (VT 1)" Type="{Type=string;Ano=314600051;Visible=False}" Value="" /><Property Name="+Primary Voltage 2 (VT 1)" Type="{Type=string;Ano=314600052;Visible=False}" Value="" /><Property Name="+Secondary Voltage 1 (VT 1)" Type="{Type=string;Ano=314600053;Visible=False}" Value="" /><Property Name="+Secondary Voltage 2 (VT 1)" Type="{Type=string;Ano=314600054;Visible=False}" Value="" /><Property Name="+PCB (VT 1)" Type="{Type=string;Ano=314600055;Visible=False}" Value="" /><Property Name="+Phase (VT 1)" Type="{Type=string;Ano=314600056;Visible=False}" Value="" /><Property Name="+Control Number (VT 2)" Type="{Type=string;Ano=314600057;Visible=False}" Value="" /><Property Name="+Transformer Type (VT 2)" Type="{Type=string;Ano=314600058;Visible=False}" Value="" /><Property Name="+Serial Number (VT 2)" Type="{Type=string;Ano=314600059;Visible=False}" Value="" /><Property Name="+Manufacturer (VT 2)" Type="{Type=string;Ano=314600060;Visible=False}" Value="" /><Property Name="+Manufacturer Date (VT 2)" Type="{Type=string;Ano=314600061;Visible=False}" Value="" /><Property Name="+KVA (VT 2)" Type="{Type=string;Ano=314600062;Visible=False}" Value="" /><Property Name="+Impedance (VT 2)" Type="{Type=string;Ano=314600063;Visible=False}" Value="" /><Property Name="+Primary Voltage 1 (VT 2)" Type="{Type=string;Ano=314600064;Visible=False}" Value="" /><Property Name="+Primary Voltage 2 (VT 2)" Type="{Type=string;Ano=314600065;Visible=False}" Value="" /><Property Name="+Secondary Voltage 1 (VT 2)" Type="{Type=string;Ano=314600066;Visible=False}" Value="" /><Property Name="+Secondary Voltage 2 (VT 2)" Type="{Type=string;Ano=314600067;Visible=False}" Value="" /><Property Name="+PCB (VT 2)" Type="{Type=string;Ano=314600068;Visible=False}" Value="" /><Property Name="+Phase (VT 2)" Type="{Type=string;Ano=314600069;Visible=False}" Value="" /><Property Name="+Control Number (VT 3)" Type="{Type=string;Ano=314600070;Visible=False}" Value="" /><Property Name="+Transformer Type (VT 3)" Type="{Type=string;Ano=314600071;Visible=False}" Value="" /><Property Name="+Serial Number (VT 3)" Type="{Type=string;Ano=314600072;Visible=False}" Value="" /><Property Name="+Manufacturer (VT 3)" Type="{Type=string;Ano=314600073;Visible=False}" Value="" /><Property Name="+Manufacturer Date (VT 3)" Type="{Type=string;Ano=314600074;Visible=False}" Value="" /><Property Name="+KVA (VT 3)" Type="{Type=string;Ano=314600075;Visible=False}" Value="" /><Property Name="+Impedance (VT 3)" Type="{Type=string;Ano=314600076;Visible=False}" Value="" /><Property Name="+Primary Voltage 1 (VT 3)" Type="{Type=string;Ano=314600077;Visible=False}" Value="" /><Property Name="+Primary Voltage 2 (VT 3)" Type="{Type=string;Ano=314600078;Visible=False}" Value="" /><Property Name="+Secondary Voltage 1 (VT 3)" Type="{Type=string;Ano=314600079;Visible=False}" Value="" /><Property Name="+Secondary Voltage 2 (VT 3)" Type="{Type=string;Ano=314600080;Visible=False}" Value="" /><Property Name="+PCB (VT 3)" Type="{Type=string;Ano=314600081;Visible=False}" Value="" /><Property Name="+Phase (VT 3)" Type="{Type=string;Ano=314600082;Visible=False}" Value="" /><Property Name="+Base Details" Type="{Tab=Exterior;Type=string;Ano=314600083;Items=Concrete Cap,Concrete Well,Fibreglass Well,Foundation Req'd,Other (See Notes)}" Value="" /><Property Name="+Condition of Base" Type="{Tab=Exterior;Type=string;Ano=314600084;Items=Good,Fair,Needs Repair,Other (See Notes)}" Value="" /><Property Name="+Penta Bolt" Type="{Tab=Exterior;Type=string;Ano=314600085;Items=Non Penta Design,OK,Repaired on Site,Needs Repair}" Value="" /><Property Name="+Lock for Cover" Type="{Tab=Exterior;Type=string;Ano=314600086;Items=OK,Lock Replaced}" Value="" /><Property Name="+TX Off Pad" Type="{Tab=Exterior;Type=string;Ano=314600087;Control=HexMobileControls:HexMobileControls.YesNoSelect}" Value="" /><Property Name="+ACCESS" Type="{Tab=Exterior;Type=string;Ano=314600088;Items=OK,Problem,Tree/Shrub,Fence,Other (See Notes)}" Value="" /><Property Name="+Grading" Type="{Tab=Exterior;Type=string;Ano=314600089;Items=OK,Problem,Low,High,Other(see notes)}" Value="" /><Property Name="+Corrosion" Type="{Tab=Exterior;Type=string;Ano=314600090;Items=None,Rust Through,Surface Rust,Layers of Rust}" Value="" /><Property Name="+Damage" Type="{Tab=Exterior;Type=string;Ano=314600091;Items=None,Hood Damaged,Skirt Damaged}" Value="" /><Property Name="+Stickers Installed" Type="{Tab=Exterior;Type=string;Ano=314600092;Control=HexMobileControls:HexMobileControls.YesNoSelect}" Value="" /><Property Name="+Radial" Type="{Type=boolean;Ano=314600093;Visible=False}" Value="" /><Property Name="+Dry-Type Fuse Canisters" Type="{Tab=Component;Type=string;Ano=314600094;Control=HexMobileControls:HexMobileControls.YesNoSelect}" Value="" /><Property Name="+Bay-O-Net Fuseholder" Type="{Tab=Component;Type=string;Ano=314600095;Control=HexMobileControls:HexMobileControls.YesNoSelect}" Value="" /><Property Name="+Tap Changer (Component)" Type="{Tab=Component;Type=string;Ano=314600096;Control=HexMobileControls:HexMobileControls.YesNoSelect}" Value="" /><Property Name="+Loadbreak Switch" Type="{Tab=Component;Type=string;Ano=314600097;Control=HexMobileControls:HexMobileControls.YesNoSelect}" Value="" /><Property Name="+Pressure Relief Device" Type="{Tab=Component;Type=string;Ano=314600098;Control=HexMobileControls:HexMobileControls.YesNoSelect}" Value="" /><Property Name="+Other Components (See Notes)" Type="{Tab=Component;Type=string;Ano=314600099;Control=HexMobileControls:HexMobileControls.YesNoSelect}" Value="" /><Property Name="+Lighting" Type="{Type=string;Ano=314600100;Visible=False}" Value="" /><Property Name="+Drainage" Type="{Type=string;Ano=314600101;Visible=False}" Value="" /><Property Name="+Neutral Star Point" Type="{Type=string;Ano=314600102;Visible=False}" Value="" /><Property Name="+Ventilation" Type="{Type=string;Ano=314600103;Visible=False}" Value="" /><Property Name="+Primary Cable Size" Type="{Type=string;Ano=314600104;Visible=False}" Value="" /><Property Name="+Secondary Cable Size" Type="{Type=string;Ano=314600105;Visible=False}" Value="" /><Property Name="+No Oil Leak" Type="{Tab=Oil Leaks;Type=string;Ano=314600106;Control=HexMobileControls:HexMobileControls.YesNoSelect}" Value="" /><Property Name="+Seam" Type="{Tab=Oil Leaks;Type=string;Ano=314600107;Control=HexMobileControls:HexMobileControls.YesNoSelect}" Value="" /><Property Name="+Bushing" Type="{Tab=Oil Leaks;Type=string;Ano=314600108;Control=HexMobileControls:HexMobileControls.YesNoSelect}" Value="" /><Property Name="+TX Required (Grass Killed)" Type="{Tab=Oil Leaks;Type=string;Ano=314600109;Control=HexMobileControls:HexMobileControls.YesNoSelect}" Value="" /><Property Name="+Plug" Type="{Tab=Oil Leaks;Type=string;Ano=314600110;Control=HexMobileControls:HexMobileControls.YesNoSelect}" Value="" /><Property Name="+Tap Changer (Oil Leak)" Type="{Tab=Oil Leaks;Type=string;Ano=314600111;Control=HexMobileControls:HexMobileControls.YesNoSelect}" Value="" /><Property Name="+Other Oil Leaks (See Notes)" Type="{Tab=Oil Leaks;Type=string;Ano=314600112;Control=HexMobileControls:HexMobileControls.YesNoSelect}" Value="" /><Property Name="+Elbows Switching Restrictions" Type="{Tab=Elbows;Type=string;Ano=314600113;Items=None,Poor Primary Slack,Short Deck,Other (See Notes)}" Value="" /><Property Name="+Tracking None" Type="{Type=boolean;Ano=314600114;Visible=False}" Value="" /><Property Name="+Tracking Fuses" Type="{Type=boolean;Ano=314600115;Visible=False}" Value="" /><Property Name="+Tracking Others (See Notes)" Type="{Type=boolean;Ano=314600001;Visible=False}" Value="" /><Property Name="+Missing Bleeder Wires None" Type="{Tab=Elbows;Type=string;Ano=314600002;Control=HexMobileControls:HexMobileControls.YesNoSelect}" Value="" /><Property Name="+Missing Bleeder Wires Insert" Type="{Tab=Elbows;Type=string;Ano=314600003;Control=HexMobileControls:HexMobileControls.YesNoSelect}" Value="" /><Property Name="+Missing Bleeder Wires Elbow" Type="{Tab=Elbows;Type=string;Ano=314600004;Control=HexMobileControls:HexMobileControls.YesNoSelect}" Value="" /><Property Name="+Missing Bleeder Wires -1" Type="{Tab=Elbows;Type=string;Ano=314600005;Control=HexMobileControls:HexMobileControls.YesNoSelect}" Value="" /><Property Name="+Missing Bleeder Wires -2" Type="{Tab=Elbows;Type=string;Ano=314600006;Control=HexMobileControls:HexMobileControls.YesNoSelect}" Value="" /><Property Name="+Missing Bleeder Wires -3" Type="{Tab=Elbows;Type=string;Ano=314600007;Control=HexMobileControls:HexMobileControls.YesNoSelect}" Value="" /><Property Name="+Fault Indicators" Type="{Tab=Elbows;Type=string;Ano=314600008;Items=None,-1 Elbow,-2 Elbow}" Value="" /><Property Name="+Lighting Arrestors" Type="{Tab=Elbows;Type=string;Ano=314600009;Items=None,-1 Elbow,-2 Elbow}" Value="" /><Property Name="+-1 Elbow Infrared" Type="{Tab=Elbows;Type=string;Ano=314600010}" Value="" /><Property Name="+-2 Elbow Infrared" Type="{Tab=Elbows;Type=string;Ano=314600011}" Value="" /><Property Name="+Overall Priority" Type="{Tab=Maintenance;Type=string;Ano=314600012;Items=No Action Required,Immediate Action Required,Follow-up Required,Correct During Planned Mtnc}" Value="" /><Property Name="+Safety Concerns" Type="{Tab=Maintenance;Type=string;Ano=314600013;Items=None,Trouble Report Initiated,Site Made Safe,Other (See Notes)}" Value="" /><Property Name="+GIS Record Errors" Type="{Tab=Maintenance;Type=string;Ano=314600014;Items=None,Equipment Not Shown,Wrong Equipment Shown,Other (See Notes)}" Value="" /><Property Name="+Requires Nomenclature" Type="{Tab=Maintenance;Type=string;Ano=314600015;Control=HexMobileControls:HexMobileControls.YesNoSelect}" Value="" /><Property Name="+Housekeeping" Type="{Type=string;Ano=314600016;Visible=False}" Value="" /><Property Name="+General Notes" Type="{Tab=General Notes;Type=string;Ano=314600017}" Value="" /><Property Name="+Schedule Date" Type="{Type=string;Ano=314600018;Required=True;ReadOnly=True;Visible=False}" Value="" /><Property Name="+Schedule Comment" Type="{Type=string;Ano=314600019;Required=True;ReadOnly=True;Visible=False}" Value="" /><Property Name="+Inspect Date" Type="{Type=string;Ano=314600020;Required=True;ReadOnly=True;Visible=False}" Value="" /><Property Name="+Inspect Comment" Type="{Type=string;Ano=314600021;Required=True;ReadOnly=True;Visible=False}" Value="" /><Property Name="+Import Date" Type="{Type=string;Ano=314600022;Required=True;ReadOnly=True;Visible=False}" Value="" /><Property Name="+Import Comment" Type="{Type=string;Ano=314600023;Required=True;ReadOnly=True;Visible=False}" Value="" /><Property Name="+GPS Location" Type="{Type=string;Ano=314600024;Required=True;ReadOnly=True;Visible=False}" Value="" /><Property Name="+HEX_STATUS" Type="{Type=string;Ano=314600025;Required=True;ReadOnly=True;Visible=False}" Value="" /><!-- Above extracted from generateGMobileLinkAttrib tool --></Properties></Symbol></NamedSketch>

  inspections = {}
  REXML::XPath.each(doc, "RedlineDocument/NamedSketch") do |inspection_template|
    it_name = inspection_template.attributes['Name']
    #puts "================#{it_name}"
    properties = []
    inspections[it_name] = properties
    REXML::XPath.each(inspection_template, "Symbol/Properties/Property") do |prop|
      if !["SelectFeature", "Required", "Prompt", "+Feature Key"].include?(prop.attributes['Name']) then
        
        #puts "[[[#{prop}]]]"
        
        property = {:name=>prop.attributes['Name'].gsub(/^\+/, ''), :value=>prop.attributes['Value']}
        prop.attributes.each do |attr|
          puts "unknow property attribute #{attr[0]}--->#{attr[1]}" if !['Name', 'Value', 'Type'].include?(attr[0])
        end
        tp = prop.attributes['Type']
        tp.gsub!(/^{/, '').gsub!(/}$/, '')
        tp.split(';').each do |pair|
          n, v = pair.split('=')
          puts "unknow attribute type #{n}-->#{v} in #{tp}" if !['Tab', 'Ano', 'Items', 'Type', 'Visible', 'ReadOnly', 'Control', 'Required', 'HEX_required'].include?(n)
          
          ##HexMobileControls:HexMobileControls.YesNoSelect is the only control type
          #puts "#{v}" if ['Control'].include?(n)
          
          ##string and boolean are the only type
          #puts "#{v}" if ['Type'].include?(n)

          ##Items will be a combo box
          #puts "#{v}" if ['Items'].include?(n)
          property[:foreign_key] = v.to_i if n == 'Ano'
          property[:group] = v if n == 'Tab'
          property[:visible] = v.to_bool if n == 'Visible'
          property[:readonly] = v.to_bool if n == 'ReadOnly'
          property[:required] = v.to_bool if n == 'Required'
          property[:input] = 'radio' if n == 'Control' and v == 'HexMobileControls:HexMobileControls.YesNoSelect'
          property[:input] = "select:#{v}" if n == 'Items'
          property[:input] = "text" if n == 'Type' and v == 'string'
          property[:input] = "radio" if n == 'Type' and v == 'boolean'
          
        end
        properties << property
      end
    end
    
  end
  return inspections
end

def write_json(inspections)
  inspections.each do |name, attrs|
    f = File.open("../ionic/www/js/#{name}.json", "w")
    f.puts attrs.to_json
    f.close
  end
end

filename = 'C:\GMobileLink\HOB_Inspections_Template.xml'
inspections = read_template(filename)
inspections.each do |name, attrs|
  it = InspectionTemplate.new
  it.name = name
  ordinal = 0
  attrs.each do |attr|
    at = AttrTemplate.new
    at.name = attr[:name]
    at.foreign_key = attr[:foreign_key]
    at.group = attr[:group]
    at.visible = attr[:visible]
    at.editable = !attr[:readonly]
    at.required = attr[:required]
    at.input = attr[:input]

    ordinal = ordinal + 10
    at.ordinal = ordinal    

    it.attr_templates << at
  end
  it.save
end