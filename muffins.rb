class Muffins
  class << self
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

    def options
      puts "_________________________"
      puts "
        1: Start Postgresql
        2: Stop Postgresql
        3: Nrok Rails 
        4: Stop Rails
        5: Restart Rails
        6: Load Remote data
        7: Load seed data
        8. Stop Muffins"
      end
  end
end

def pg_ctl
	"pg_ctl -D /usr/local/var/postgres"
end 

def start_postgres
  system("#{pg_ctl} start")
end

def stop_postgres
  system("#{pg_ctl} stop")
end

def start_rails 
	system("osascript setup.scpt")
end

def stop_rails
  system("lsof -ti:3000 | xargs kill -9s")
end

def verify_postgresql
  version = `postgres -V | awk '{print $NF}'`.chomp
  puts "You are currently running version #{version}" unless version == 10.6
  puts "Please use version 10.6"
end

def handle_input(input)
  result = eval(input)
  case result
    when 1
      start_postgres
    when 2
      stop_postgres
    when 3
      start_rails
    when 3
      stop_rails
    when 8
      exit
    else
      puts "not an option, idiot."
  end
  puts(" => #{result}")
end

repl = -> prompt do
  puts verify_postgresql
  puts "What can muffins do for you?"
  puts Muffins.initial_prompt
  puts Muffins.options
  print "❓>> "
  handle_input(gets.chomp!)
end

loop do
  repl[">> "]
end
