# your code goes here
require 'pry'

def begins_with_r(array)
  i = 0
  while i < array.length
    if array[i].start_with?("r") 
      i+= 1
  else return false
  end
end
  return true
end

def contain_a(array)
  i = 0
  new = []
  while i < array.length
    if array[i].include?("a") 
      new.push(array[i])
    end
    i+= 1
  end
  return new
end

def first_wa(array)
  i = 0
  while i < array.length
  if array[i].to_s.include?("wa")
    return array[i]
end
    i+= 1
  end
end

def remove_non_strings(array)
  array.delete_if { |element| !(element.is_a? String) }
end

def count_elements(array)

  array.each do |element| 
    element[:count] = 0
    name = element[:name]
    array.each do |hash|
      if hash[:name] == name
        element[:count] += 1
      end
    end
  end.uniq
end


def merge_data(array1, array2)
    array2[0].values.map.with_index do |v, i| 
      binding.pry
      array1[i].merge(v)
    end
end

def find_cool(array_of_hashes)
  i = 0
  array_of_hashes.each do |hash|
    hash.each do |k, v|
      if v == "cool"
        return [array_of_hashes[i]]
      end
    end
    i += 1
  end
end

def organize_schools(hash_of_schools)
  new_hash = {}
  hash_of_schools.each do |school, value|
    value.each do |location, city|
     
      if !new_hash.has_key?(city)
          new_hash[city] = []
        end
      if !new_hash[city].include?(school)
          new_hash[city] << school
        end
      end
    end
    return new_hash
end
