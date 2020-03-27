require 'pry'

def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |attribute, values|
    values.each do |inner_key, names|
      names.each do |name|
        new_hash[name] = {} if !new_hash[name]
        if new_hash[name][attribute]
          new_hash[name][attribute].push(inner_key.to_s)
        else 
          new_hash[name][attribute] = [inner_key.to_s]      
        end 
      end 
    end 
  end 
  new_hash 
end   