# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Company.destroy_all
# **************************

# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data).

# 1a. check out the schema file
#Terminal - sqlite3 db/development.sqlite3
#then .schema
#then .exit to go back to terminal

#or

#Go to db directory > open schema.rb file. This is ruby code that mirrors SQL schema.

# 1b. check out the model file

#Go to app/models directory > open up company.rb and contact.rb

# 2. insert new rows in companies table

#companies = Company.all.count
puts "There are #{Company.all.count} companies"

# Company.all is effectively SELECT * FROM companies, and .all.count is SELECT COUNT(*) FROM companies
# !! Then run the file with rails runner code-along/2-models.rb
# log/development.log file and scroll to the bottom.  There's some noise there, but if you look closely you'll see that a SELECT COUNT(*) query was performed.

# Add data to model
    # First, build a new instance of the Company class

apple = Company.new
apple["name"] = "Apple"
apple["city"] = "Cupertino"
apple["state"] = "CA"
apple["url"] = "https://apple.com"
apple.save                           #this is key!! Completing task of putting row in the table
puts apple.inspect

puts "There are #{Company.all.count} companies"

new_company = Company.new #could also have called this variable amazon instead of "new company"
new_company["name"] = "Amazon"
new_company["city"] = "Seattle"
new_company["state"] = "WA"
new_company["url"] = "https://amazon.com"
new_company.save                            
puts new_company.inspect

puts "There are #{Company.all.count} companies"

new_company = Company.new
new_company["name"] = "Google"
new_company["city"] = "Mountain View"
new_company["state"] = "CA"
new_company["url"] = "https://google.com"
new_company.save                            
puts new_company.inspect

puts "There are #{Company.all.count} companies"

# We can also use a shortcut for the above which is new_company.name = "Google" !!
# using rails runner code-along/2-models. -- this is how you run things!!!!

# 3. query companies table to find all rows with California companies
    # we've already learned .all is going to return all records from a table

cali_companies = Company.where({"state" => "CA"}) #or can do more filtering with ({"state"=>"CA", "name"=>"Apple"})
puts cali_companies.inspect #inspect expands upon the data code that will appear

puts "California companies: #{cali_companies.count}"

#rails runner data.rb will run the data in a nice format !!

# 4. query companies table to find single row for Apple

#apple = Company.where({"name" => "Apple"})[0]
#puts apple.inspect
#or

apple = Company.find_by({"name" => "Apple"})
puts apple.inspect

# 5. read a row's column value

puts apple["url"]

# 6. update a row's column value

amazon = Company.find_by({"name" => "Amazon"})
amazon["url"] = "https://amazon.com"
amazon.save
puts amazon.inspect

# 7. delete a row

google = Company.find_by({"name" => "Google"})
google.destroy                                  #dont use .delete. use destroy! Destroy is a save.
puts google.inspect

puts "There are #{Company.all.count} companies"