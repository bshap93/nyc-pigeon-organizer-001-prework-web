require 'pry'
def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |attribute, info|
    info.each do |attribute_status, birds|
      birds.each do |bird|
        pigeon_list[bird] = {}
      end
    end
  end
  pigeon_list.each do |bird, hash|
    data.each do |attribute, info|
      pigeon_list[bird][attribute] = []
    end
  end
  pigeon_list.each do |bird, attributes|
    attributes.each do |attribute, array|
      data.each do |attribute, info|
        info.each do |attribute_status, birds|
          if birds.include?(bird)
            pigeon_list[bird][attribute] << attribute_status.to_s
            pigeon_list[bird][attribute] = pigeon_list[bird][attribute].uniq
          end
        end
      end
    end
  end
  pigeon_list
end