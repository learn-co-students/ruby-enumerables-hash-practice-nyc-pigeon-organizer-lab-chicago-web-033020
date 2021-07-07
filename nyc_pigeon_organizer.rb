require 'pry'
def nyc_pigeon_organizer(data)
new_hash = {} 
data.each do |key_attr, value| 
 value.each do |key_attr_two, value_names| 
  value_names.each do |name| 
   if !new_hash[name]
   new_hash[name] = {}
   end
   if !new_hash[name][key_attr]
     new_hash[name][key_attr] = []
   end
   new_hash[name][key_attr] << key_attr_two.to_s
  end
 end
end
new_hash
end

# name_hash = data.reduce({}) do |memo, (k, v)|
# data[k][v].each_pair
#end


# pigeon_data = {
#   :color => {
#     :purple => ["Theo", "Peter Jr.", "Lucky"],
#     :grey => ["Theo", "Peter Jr.", "Ms. K"],
#     :white => ["Queenie", "Andrew", "Ms. K", "Alex"],

# pigeon_list = {
#   "Theo" => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Subway"]
#   },