
def nyc_pigeon_organizer(data)
pigeon_list = {}
 data.each do |property,property_names|
  property_names.each do |property_values, pigeon_names|
    pigeon_names.each do |name|
     pigeon_list[name] ||= {}
     pigeon_list[name][property] ||=[]
     pigeon_list[name][property].push(property_values.to_s)
      end
   end
 end
 pigeon_list
end
