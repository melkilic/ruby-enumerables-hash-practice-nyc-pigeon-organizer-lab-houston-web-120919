
  def nyc_pigeon_organizer(data)
  pigeon_list = {}

  data.each do |keys, values|
    values.each do |attribute_value,pigeon_names|
      pigeon_names.each do |name|
        if !pigeon_list[name]
        pigeon_list[name][keys] ||= []
      end
        pigeon_list[name][keys].push(attribute_value.to_s)
      end
    end
  end

  pigeon_list
end
