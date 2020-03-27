def nyc_pigeon_organizer(data)
 final_pigeon = {}
 data.each do |about, value|
   value.each do |stats, all_names|
     all_names.each do |name|
       if final_pigeon[name] == nil 
         final_pigeon[name] = {}
       end 
       if final_pigeon[name][about] == nil
         final_pigeon[name][about] = []
       end 
       final_pigeon[name][about].push(stats.to_s)
     end 
   end 
 end 
 final_pigeon
end
