# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along-complete/1-migrations.rb

# ------------------------------------------------
# Note: no code is needed in this file.
# Execute steps below in terminal and other files.
# ------------------------------------------------

# - Add model and table for the Company entity in our domain model
# We want to create a table that can hold data about companies AND We want to create a Company model and have it connect to this table
# To accomplish the first step, we'll need a migration file.  A migration is just Ruby code that, when executed, will talk to the database and add a new table into it.  And for the second step, we just need to create a file for the Company class.

# 1. in terminal, generate the model and table for Company. ALWAYS USE SINGULAR NOUN
rails generate model Company

# 2. open newly generated files

# 3. in the db/migrate file, add relevant columns matching our domain model

#This is the example for the Company model

class CreateCompanies < ActiveRecord::Migration[7.1]
    def change
      create_table :companies do |t|
        t.string "name" #company name in t.string t for table. the primary ID will always be built in like in SQL. 
        t.string "city"
        t.string "state"
        t.string "url" #could also do t.integer if need a number
  
        t.timestamps # We always get created_at and updated_at with t.timestamps
      end
    end
  end

# 4. in terminal, execute the migration file. This will create the tables we just made in db/migrate using the t.string "name" column method
rails db:migrate

# 5. check the schema to confirm the change
# pay attention to the SQL in the log. 

Terminal - sqlite3 db/development.sqlite3

# - Add model and table for the Contact entity in our domain model

# repeat steps 1-5 above.

#If you need to update or fix the migration file, need to DELETE the entire database and start again
#If you want to proceed, find the sqlite file db/development.sqlite3 and delete it.  You can then modify the code in the migration file and migrate again with the command:

# looking at the log of all things done: 
cat log/development.log 
or go to 
log/development.log --- use this!!!
# If you mess up creating data tables after you db:migrate (migrate...), then don't run again. delete the migrate file with its unique timestamp then rerun??