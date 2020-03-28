require 'pry'

def nyc_pigeon_organizer(data)
final_hash = {
  
}
  
  data.each do |thing, pigeons|
  pigeons.each do |detail_ab_thing, more_pigeons|
  more_pigeons.each do |name|
      
      if !final_hash.has_key?(name)
      final_hash[name] = {}
    end
        
      if !final_hash[name].has_key?(thing)
       final_hash[name][thing] = []
      end
      
    if !final_hash[name][thing].include?(detail_ab_thing)
    final_hash[name][thing] << detail_ab_thing.to_s
    end
  end
end
end
  final_hash
end
