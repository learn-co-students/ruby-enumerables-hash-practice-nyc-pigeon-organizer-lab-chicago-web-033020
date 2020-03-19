def nyc_pigeon_organizer(data)
  # write your code here!
  result = { }
  data.each do |attribute, value|
    value.each do |key, names|
      names.each do |names|
        if !result[names]
          result[names] = {}
        end

        if !result[names][attribute]
          result[names][attribute] = []
        end

        result[names][attribute] << key.to_s
        end
      end
    end
  result
end
