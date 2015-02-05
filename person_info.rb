require_relative "top_secret_black_box.rb"

def print_greeting(person_info)
  p person_info[0]
  p person_info[1]
  p person_info.class
  p person_info
  "My name is #{person_info[:name]} and I'm #{person_info[:age]} years old."
end

p print_greeting(get_person_info)
