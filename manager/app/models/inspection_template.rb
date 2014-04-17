class InspectionTemplate < ActiveRecord::Base
  has_many :attr_templates
  
  def generate
    inspection = Inspection.new
    inspection.name = self.name
    self.attr_templates.each do |at|
      nat = Attr.new
      nat.name = at.name
      nat.foreign_key = at.foreign_key
      nat.group = at.group
      nat.visible = at.visible
      nat.editable = at.editable
      nat.required = at.required
      nat.input = at.input

      inspection.attrs << nat
    end
    inspection.save
    return inspection
  end
end
