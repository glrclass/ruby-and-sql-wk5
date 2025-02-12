# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/3-associations.rb

# **************************
# DON'T CHANGE OR MOVE
Contact.destroy_all
# **************************

# - Insert and read contact data for companies in the database

apple = Company.new
apple["name"] = "Apple"
apple["city"] = "Cupertino"
apple["state"] = "CA"
apple["url"] = "https://www.apple.com"
apple.save

amazon = Company.new
amazon["name"] = "Amazon"
amazon["city"] = "Seattle"
amazon["state"] = "WA"
amazon.save

new_company3 = Company.new
new_company3["name"] = "Twitter"
new_company3["city"] = "San Francisco"
new_company3["state"] = "CA"
new_company3.save

# How many rows are in the companies table?
puts "companies: #{Company.all.count}" # companies: 3

contact = Contact.new
contact["first_name"] = "Tim"
contact["last_name"] = "Cook"
contact["email"] = "tim@apple.com"
contact["company_id"] = apple["id"]
contact.save

contact = Contact.new
contact["first_name"] = "Craig"
contact["last_name"] = "Federighi"
contact["email"] = "craig@apple.com"
contact["company_id"] = apple["id"]
contact.save

contact = Contact.new
contact["first_name"] = "Jeff"
contact["last_name"] = "Bezos"
contact["email"] = "jeff@amazon.com"
contact["company_id"] = amazon["id"]
contact.save

puts Company.all.count
puts Contact.all.count

puts "There are #{Company.all.count} companies"
puts "There are #{Contact.all.count} contacts"

# 1. insert new rows in the contacts table with relationship to a company

# 2. How many contacts work at Apple?

# first query to find the row in companies for Apple
apple = Company.find_by({ "name" => "Apple" })

# next, query to find all rows in contacts with relationship to Apple
# "talk" to the contacts table using the Contact model:

apple_contacts = Contact.where({ "company_id" => apple["id"] })
puts apple_contacts.inspect

puts "Contacts at Apple: #{apple_contacts.count}"
for contact in apple_contacts
    puts "#{contact["first_name"]} #{contact["last_name"]}"
end

# 3. What is the full name of each contact who works at Apple?

# Go through this again with tutor. Use the code along complete for now. Something got messed up

