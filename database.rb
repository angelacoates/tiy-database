class Person
  attr_reader "name", "phone_number"

  def initialize(name, phone_number, address, position, salary,
    slack_account, github_account)
    
    @name = name
    @phone_number = phone_number
    @address = address
    @position = position
    @salary = salary
    @slack_account = slack_account
    @github_account = github_account
  end
end

people = []

loop do
  puts "add a person"
  puts "search a person"
  puts "delete a person"

  choice = gets.chomp

  if choice == "a"
    puts "Thanks for adding!"

    puts "Please provide the name of the person you are adding"

    name = gets.chomp

    puts "Please provide the phone number of the person you are adding "

    phone_number = gets.chomp

    puts " Please provide the address of the person you are trying to add"

    address = gets.chomp

    puts "Please provide the position of the person you are adding"

    position = gets.chomp

    puts "Please provide the salary of the person you are adding"

    salary = gets.chomp

    puts "Please provide the slack account of the person you are adding"

    slack_account = gets.chomp

    puts "Please provide the GitHub account for the person you are adding"

    github_account = gets.chomp

    person = Person.new(name, phone_number, address, position, salary, slack_account, github_account)

    people << person

    p people
  end

  if choice == "s"
    puts "Thanks for searching"
  end

  if choice == "d"
    puts "You have deleted a person"
  end
end
