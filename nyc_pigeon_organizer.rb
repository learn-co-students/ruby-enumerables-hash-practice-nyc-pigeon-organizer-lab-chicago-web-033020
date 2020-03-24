def nyc_pigeon_organizer(data)
  pigeon_list = {}


  male_pigeons = data[:gender][:male]
  male_pigeon_list = {}

  female_pigeons = data[:gender][:female]
  female_pigeon_list = {}

  male_pigeons.each do |name|
    male_pigeon_list[name] = {:color => [], :gender => ["male"], :lives => []}
  end

  female_pigeons.each do |name|
   female_pigeon_list[name] = {:color => [], :gender => ["female"], :lives => []}
  end

  pigeon_list = male_pigeon_list.merge(female_pigeon_list)

  
  color_of_pigeon = data[:color]

  pigeon_list.each do |name, attribute_hash|
    color_of_pigeon.each do |color_sym, name_array|
      if name_array.include?(name)
        (pigeon_list[name][:color]).push(color_sym.to_s)
      end
    end
  end

  
  residence_of_pigeon = data[:lives]

  pigeon_list.each do |name, attribute_hash|
    residence_of_pigeon.each do |location, name_array|
      if name_array.include?(name)
        (pigeon_list[name][:lives]).push(location)
      end
    end
  end
  pigeon_list
end 
