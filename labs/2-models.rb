# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.

puts "Salespeople: #{Salesperson.all.count}"

person = Salesperson.new
puts person.inspect
person["first_name"] = "Ben"
person["last_name"] = "Block"
person["email"] = "block@yey.com"

puts person.inspect

puts "Salespeople: #{Salesperson.all.count}"

person = Salesperson.new
puts person.inspect
person["first_name"] = "Brian"
person["last_name"] = "Eng"
person["email"] = "eng@yey.com"

puts person.inspect



# 3. write code to display how many salespeople rows are in the database

# ---------------------------------
# Salespeople: 2

puts "----------------------------"
puts "Salespeople: #{Salesperson.all.count}"

# 4. modify/update column data for a row in the salespeople table.

ben = Salesperson.find_by({"first_name" => "Ben", "last_name" => "Block"})
ben["email"] = "bjblock@gmail.com"
ben.save
puts ben.inspect


# CHALLENGE:
# 5. write code to display each salesperson's full name

# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng

people = Salesperson.all
for giraffe in people  #first row in people then it will loop and do second row in people
    first_name = giraffe["first_name"]
    last_name = giraffe["last_name"]
    name = "#{first_name} #{last_name}"
puts name
end