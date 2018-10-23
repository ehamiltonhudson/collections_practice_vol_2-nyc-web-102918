def begins_with_r(array)
  array.all? { |word| word.start_with?("r") }
end

def contain_a(array)
  array.select { |word| word.include?("a") }
end

def first_wa(array)
  array.find { |word| word.to_s.start_with?("wa") }
end

def remove_non_strings(array)
  array.find_all { |obj| obj.class.eql?(String) }
end

def count_elements(array)
  counted_elements = []
  duplicates = Hash.new 0
  array.each {|obj| obj.each {|key, value| duplicates[value] += 1}}
  duplicates.each {|name, count| counted_elements << { name: name, count: count }}
  counted_elements
end


def merge_data(hash_one, hash_two)
  i = 0
  while i < hash_one.length
    hash_two.each { |data| data.each {|ka, va| if hash_one[i].has_value?(ka); hash_one[i].merge!(va) end }
      i += 1 }
    end
    return hash_one
  end

def find_cool(argument)
  i = 0
  vcool = []
    while i < argument.length do
      argument[i].map { |k, v| if v == "cool"
        vcool << cool[i]
        return vcool end }
      i += 1
    end
  end

def organize_schools(schools)
  organized_location = {}
    schools.each { |k, v|
      if(organized_location[v[:location]] == nil)
        organized_location[v[:location]] = [k]
      else organized_location[v[:location]] << k
    end }
    return organized_location
end
