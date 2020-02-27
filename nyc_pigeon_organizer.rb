require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  data.each do |c_g_l, value|
    value.each do |type, names|
      names.each do |ind|
        if pigeon_list[ind] == nil 
          pigeon_list[ind] = {}
        end
        if pigeon_list[ind][c_g_l] == nil
          pigeon_list[ind][c_g_l] = []
        end
        pigeon_list[ind][c_g_l].push("#{type}") 
      end
    end
  end
  pigeon_list
end
