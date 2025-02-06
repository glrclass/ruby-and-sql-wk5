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
# 1b. check out the model file

# 2. insert new rows in companies table

#companies = Company.all.count
puts "There are #{Company.all.count} companies"

new_company = Company.new
new_company["name"] = "Apple"
new_company["city"] = "Cupertino"
new_company["state"] = "CA"
new_company["url"] = "https://apple.com"
new_company.save                           #this is key!! Completing task of putting row in the table
puts new_company.inspect

puts "There are #{Company.all.count} companies"

new_company = Company.new
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

# using rails runner code-along/2-models. -- this is how you run things!!!!

# 3. query companies table to find all row with California company

cali_companies = Company.where({"state" => "CA"})
puts cali_companies.inspect #inspect expands upon the data code that will appear

#rails runner data.rb will run the data in a nice format

puts "California companies: #{cali_companies.count}"

# 4. query companies table to find single row for Apple

#apple = Company.where({"name" => "Apple"})[0]
#puts apple.inspect
#or

apple = Company.find_by({"name" => "Apple"})
puts apple.inspect

# 5. read a row's column value

# 6. update a row's column value

# 7. delete a row
