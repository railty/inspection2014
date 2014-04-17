module RedlinesHelper
  def get_fid(feature)
    fid = 0
    
    feature.each do |attr|
      if attr['Name'] == "Feature Key" then
        fno, fid, cno, cid = attr['Value'].split(',')
        fid = fid.to_i
        break
      end
    end
    
    return fid
  end
  def attr_tag(fid, attr)
    if attr['ReadOnly'] == 'True' then
      html = "<tr><td>"+attr['Name']+"</td><td>"+attr['Value']+"</td></tr>"
    else
      control = ""
      if attr['Items'] != nil then
        control = select('Attr', attr['Name'], attr['Items'].split(','), :selected=>attr['Value'])
      else
        control = text_field('Attr', attr['Name'], :value =>attr['Value'])
      end
      
      html = "<tr><td>"+attr['Name']+"</td><td>" + (attr['Ano']==nil ? '0' : attr['Ano'].to_s) + "</td><td>"+control+"</td><td>"+link_to("Update", redline_path(@redline, {:fid=>fid, :ano=>attr['Ano'], :value=>attr['Value']}), :method=>:patch, :class=>'update_attr', :id=>"#{fid}_#{attr['Ano']}", :remote => true)+"</td></tr>"
    end
    return html.html_safe
  end
end
