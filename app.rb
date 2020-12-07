"$ git checkout develop"
"$ git pull origin develop"

puts "$$$$$$$$$$$"

status = %x( git status )

branch = status.split(" ")[2]

puts branch


system("git add .")
system("git commit -m 'pull request #{branch}'")

system("git checkout develop")
system("git pull origin develop")
system("git merge '#{branch}'")

system("git checkout '#{branch}'")
system("git merge develop")

system()#