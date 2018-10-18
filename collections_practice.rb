# your code goes here
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
