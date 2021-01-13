# Write your code here.
def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(array)
  badge_messages = []
  array.each { |name| badge_messages << badge_maker(name) }
  badge_messages
end

# def assign_rooms(array)
#   room_assignments = []
#   room = 1
#   array.each do |name|
#     room_assignments << "Hello, #{name}! You'll be assigned to room #{room}!"
#     room += 1
#   end
#   room_assignments
# end

def assign_rooms(array)
  room_assignments = []
  array.each.with_index(1) do |name, index|
    room_assignments << "Hello, #{name}! You'll be assigned to room #{index}!"
  end
  room_assignments
end

def printer(attendees)
  badges_and_room_assignments = batch_badge_creator(attendees) + assign_rooms(attendees)
  badges_and_room_assignments.each { |string| puts "#{string}"}
end
