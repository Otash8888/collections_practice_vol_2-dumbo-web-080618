
def begins_with_r (array)
  
  words_begins_with_r = array.select do |value|
                        value.start_with?("r")
                        end
  if words_begins_with_r.length == array.length
    true
  else
    false 
  end 
  
end

def contain_a (array)
  array.select {|element| element.include?("a") }
end

def first_wa (array)
  array.find do |element|
    if element.class == Symbol 
      s_element = element.to_s 
      s_element.start_with?("wa")
    else
      element.start_with?("wa")
    end
  end
end

def remove_non_strings(array)
  array.select do|element|
   element.class == String 
  end
end


  def count_elements(array_sample)
new_array = array_sample
return_arr = []
compare_arr = []
return_key  = ""
return_value = ""
i=0
 while i<array_sample.length
	if !compare_arr.include?(array_sample[i])
	  count_arr = new_array.select do |new_arr_element|
				  new_arr_element == array_sample[i] 
				  end
	
	  return_number = count_arr.length
	  array_sample[i].each  do|key, value|
					return_key = key 
					return_value = value
					end
	   				
	  new_hash = {return_key => return_value, :count => return_number}
    return_arr.push(new_hash)
	  compare_arr.push(array_sample[i])
	end 
	
	i+=1
 end
 return_arr
end

def merge_data(keys, data)
  merged_arr = []
  keys.each do |k_element|
    data.each do |d_element|
      k_element.each do |k_key1,k_value1|
        d_element.each do |d_key1,d_value1|
         if k_value1 == d_key1
           new_hash = k_element.merge(d_value1)
           merged_arr.push(new_hash)
         end 
        end
      end
    end
  end
  merged_arr
end

def find_cool(cool)
  cool_arr = []
  cool.each do |element|
    element.each do |key1,value1|
      if value1 == "cool"
        cool_arr.push(element)
      end
    end
  end
  cool_arr
end

def organize_schools(schools)
  new_arr_ny  = []
  new_arr_sf  = []
  new_arr_ch = []
  new_hash = {}
  schools.each do |key1,value1|
    value1.each do |key2,value2|
      if value2 == "NYC"
      new_hash = {value2 => new_arr_ny.push(key1)}
      new_arr.push(new_hash)
     
       elsif value2 == "SF"
      new_hash = {value2 => key1}
      new_arr.push(new_hash)
     
       elsif value2 == "Chicago"
      new_hash = {value2 => key1}
      new_arr.push(new_hash)
       
      end
    end
  end
  new_arr
  
  
end
