require 'git'

puts "$$$$$$$$$$$"
status = %x( git status )
branch = status.split(" ")[2]

puts branch
class Controller

end