class Person
  attr_reader "name", "phone_number", "address", "position", "salary", "slack_account", "github_account"

  def initialize(name, phone_number, address, position, salary, slack_account, github_account)
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
    puts "What name do you want to search for?"
    search_name = gets.chomp

    found_person = people.find { |person| person.name == search_name }

    if found_person
      puts "Name #{person.name}"
      puts "Phone_number #{person.phone_number}"
      puts "Address #{person.address}"
      puts "Position #{person.position}"
      puts "Salary #{person.salary}"
      puts "Slack_account #{person.slack_account}"
      puts "github_account #{person.github_account}"
    else
      puts " Sorry but that name is not in our database."
    end
  end

  if choice == "d"
    puts "Please enter the name you would like to delete"
    delete_name = gets.chomp

    people.delete_if {|person| person.name == delete_name}

    puts " Thank you, #{delete_name} has been deleted from the data base"
  end
end
