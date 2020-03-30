#study guide:https://medium.com/@ericlaitman/nyc-pigeon-organizer-70243d7aa9f5
def nyc_pigeon_organizer(data)
  pigeon_list = {}

  data.each do |attribute_name, attributes|
    attributes.each do |attribute_value, pigeon_names|
      pigeon_names.each do |name|
        pigeon_list[name] ||= {}
        #意思就是
        #if !pigeon_list[name]
        #pigeon_list[name]={}
        #end

        pigeon_list[name][attribute_name] ||= []
        #意思就是
        #if !pigeon_list[name][attribute_name]
        #pigeon_list[name][attribute_name] = []
        #end

        pigeon_list[name][attribute_name].push(attribute_value.to_s)
      end
    end
  end

  pigeon_list
end
