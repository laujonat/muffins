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

# Install Ruby
# Install bundler
# install Brew ( Assumption brew is installed)

# Install brew files - postgres / chromedrive

def verify_postgresql
  version = system("postgres -V | awk \'{print $NF}' >&2")
  puts "You are currently running version #version" unless version == 10.6
  puts "Please use version 10.6"
end

# def locate_postgres
#   pg_path = system('which postgres')

#   if pg_path
#     pg_path
#   end

#   'which '
# end

class Muffins
  def initialize
    system('clear')
    @choice = 0
    @initial_choices = ['A', 'B', 'C']
    @choices = @initial_choices
  end

  def choose(choice)
    set_state(choice)
  end

  def render
    @choices
  end

  private
  def handle_input(input)
    run_command(@choice) unless input != ""
  end

  def set_state(input)
    handle_input(input)
    @choice = input - 1
    choices = @initial_choices.dup
    choices[input - 1] = '> ' + choices[input - 1]
    @choices = choices
  end

  def run_command(choice)
    commands = []
    system(commands[choice])
  end
end

muffins = Muffins.new

repl = -> prompt do
  puts "What can muffins do for you?"
  puts initial_prompt
  puts muffins.render
  muffins.choose(eval(gets.chomp!))
  system('clear')
end

loop do
  repl[">> "]
end
