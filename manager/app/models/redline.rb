require "rexml/document"
class Redline < ActiveRecord::Base
  has_attached_file :xml
  validates_attachment_content_type :xml, :content_type => ['text/xml']
  
  def features
    features = load_xml_data(read_xml_file(self.xml.path))
    return features
  end
  
  def load_xml_data(xml)
    features = []
    REXML::XPath.each(xml, "RedlineDocument/Category[@Name='Inspect']/Redlines/Symbol") do |symbol|
      feature = []
      REXML::XPath.each(symbol, "Properties/Property") do |property|
        attr = {}
        attr['Name'] = property.attributes['Name']
        attr['Value'] = property.attributes['Value']
        attr['Type']  = 'unknown'
        
        property.attributes["Type"].gsub(/^{/, '').gsub(/}$/, '').split(';').each do |tp|
          n, v = tp.split('=')
          if v==nil then
            attr[n]  = true
          else
            if ['Tab', 'Ano', 'Type', 'Items', 'Number', 'string', 'DateTime', 'Control', 'Required', 'ReadOnly', 'HEX_required', 'Visible'].include?(n) then
              attr[n]  = v 
            else
              puts "unknown attribute #{n}"
            end
          end
        end
        attr['Type'] = 'keys' if attr['Name'] == 'Feature Key' and attr['Type']=='unknown'
        if attr['Visible'] != "False" then
          feature << attr
        end
      end
      features << feature
    end
    return features
  end
  
  def read_xml_file2(filename)
    doc = REXML::Document.new('<?xml version="1.0" encoding="ISO-8859-1"?>' + File.read(filename))
    return doc
  end
  
  def read_xml_file(filename)
    doc = REXML::Document.new(File.read(filename, encoding: "ISO8859-1"))
    return doc
  end
  
  def update_value(fid, ano, v)
    doc = read_xml_file(self.xml.path)

    REXML::XPath.each(doc, "RedlineDocument/Category[@Name='Inspect']/Redlines/Symbol/Properties/Property[@Name='Feature Key']") do |property|
      f1, fid2, f2, f3 = property.attributes['Value'].split(',')
      if fid2.to_i == fid.to_i then
        properties = property.parent
        REXML::XPath.each(properties, "Property") do |prop|
          if prop.attributes['Type'] =~ /Ano=#{ano}/ then
            puts prop.attributes['Value']
            prop.attributes['Value'] = v
          end
        end
      end
    end

    File.open(self.xml.path, "w") do |data|
      data << doc
    end
    
    File.open('tmp/aa.xml', "w") do |data|
      data << doc
    end
    
    return true
  end
end
