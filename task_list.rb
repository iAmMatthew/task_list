task_list = Hash.new

puts "What do you need to do today?" 
task = gets.chomp
while task != "exit"
  if task_list.has_key?(task)
    puts "You haved added a task."
  else 
    task_list[task] = 1
  end
  puts "Would you like to do anything else? Type a task or exit." 
task = gets.chomp
end 
task_list.each do |task, number|
  puts "I have to #{task}."
end