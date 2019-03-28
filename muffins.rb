def initial_prompt
  user = `git config user.name`
  puts " ___________________"
  puts "  Hi, #{user}".delete!("\n")
  puts "  -------------------"
  puts "   \\"
  puts "    \\"
  puts "        .--."
  puts "       |o_o |"
  puts "       |:_/ |"
  puts "      //   \ \\"
  puts "     (|     | )"
  puts "    /\"\_   _/`\\"
  puts "    \\___)=(___/`"

  puts "\n\n"
end 

class Muffins
  class << self 
    def options
      puts " 
        1: Start Postgresql
        2: Stop Postgresql
        3: Start Rails
        4: Stop Rails 
        5: Restart Rails 
        6: Load Remote data 
        7: Load seed data
        8. Stop Muffins"
      end 
  end 
end 

muffins = Muffins.new

def handle_input(input)
  result = eval(input)
  exit if result == 8
  puts(" => #{result}")
end

repl = -> prompt do
  puts "What can muffins do for you?"
  puts initial_prompt
  puts Muffins.options
  handle_input(gets.chomp!)
end

loop do
  repl[">> "]
end
