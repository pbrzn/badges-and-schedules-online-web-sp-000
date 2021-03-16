def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(name_array)
  name_array.collect do |name| 
    badge_maker(name)
  end
end

def assign_rooms(name_array)
  array=[]
  name_array.each_with_index do |name, index|
    array << "Hello, #{name}! You'll be assigned to room #{index+1}!"
  end
  array
end

def printer(name_array)
  badges=batch_badge_creator(name_array)
  rooms=assign_rooms(name_array)
  badges.each {|badge| puts badge}
  rooms.each {|room| puts room}
end

