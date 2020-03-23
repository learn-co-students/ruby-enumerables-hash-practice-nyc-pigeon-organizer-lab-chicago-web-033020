#more:https://github.com/swaddell7/ruby-enumerables-hash-practice-nyc-pigeon-organizer-lab-chicago-web-033020/blob/master/nyc_pigeon_organizer.rb
def nyc_pigeon_organizer(data)
  result={}
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
