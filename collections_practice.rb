require "pry"

def begins_with_r(array)

  all_r = array.collect do |word|
  if word.downcase.start_with?("r")
    true
  else
    false
  end
  end

  if all_r.include?(false)
   false
  else true
  end

end


def contain_a(array)
  array.select do |word|
    word.include?("a")
  end
end

def first_wa(array)
  array.find do |word|
    word.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.delete_if do |element|
    element.class != String
  end
end

def count_elements(array)
  array.each do |hash|
    hash[:count] = 0
    array.each do |same_hash|
      hash[:count] += 1 if hash[:name] == same_hash[:name]
    end
  end
  array.uniq
end

def merge_data(hash1, hash2)
  hash2[0].values.map.with_index {|value, index| hash1[index].merge(value)}
end

def find_cool(array)
  array.select do |each_hash|
    each_hash[:temperature] == "cool"
  end
end

def organize_schools(school_list)
  organized_list = {}

  school_list.each do |school, location_hash|
    location_hash.each do |location_key, state|
      organized_list[state] = []
    end end
  school_list.each do |school, location_hash|
    location_hash.each do |location_key, state|
      organized_list[state] << school
    end end

  organized_list
end
