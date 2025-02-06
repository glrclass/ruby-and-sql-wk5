# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along-complete/1-migrations.rb

# ------------------------------------------------
# Note: no code is needed in this file.
# Execute steps below in terminal and other files.
# ------------------------------------------------

# - Add model and table for the Company entity in our domain model

# 1. in terminal, generate the model and table for Company. ALWAYS USE SINGULAR NOUN
# rails generate model _____

# 2. open newly generated files

# 3. in the db/migrate file, add relevant columns matching our domain model

# 4. in terminal, execute the migration file. This will create the tables we just made in db/migrate using the t.string "name" column method
# rails db:migrate

# 5. check the schema to confirm the change
# pay attention to the SQL in the log. Terminal - sqlite3 db/development.sqlite3

# - Add model and table for the Contact entity in our domain model

# repeat steps 1-5 above.

# looking at the log of all things done: cat log/development.log or go to log/development.log --- use this!!!
# If you mess up creating data tables after you db:migrate (migrate...), then don't run again. delete the migrate file with its unique timestamp then rerun??