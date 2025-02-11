# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along-complete/0-classes.rb


# String Class

bens_favorite_food = "sushi"
brians_favorite_food = "tacos"

puts bens_favorite_food.class # type of thing this is (aka object)
puts brians_favorite_food.class # type of thing this is (aka object)

# String Methods

puts bens_favorite_food.upcase
puts brians_favorite_food.upcase

# We know about the following classes: Strings, Integers, floats (.to_f), arrays, hashes.
  #In Array class, we know how to .sort and .uniq 

# CUSTOM CLASSES - Our own classes to build things our application needs. For example, virtual dogs.

# Dog class with method "speak". 
    # Always Capitalize and make singular a new Class

class Dog
    def speak
        puts "woof!"
    end
end

#Creating a new dog instance

lassie = Dog.new
lassie.speak

rover = Dog.new
rover.speak  # don't need puts because the method already "puts" it above

jenkins = Dog.new
jenkins["name"] = "Jenkins"
puts jenkins.class
puts jenkins.speak
puts jenkins["name"]

# A lot of powerful programming we can do with this concept,
# but we only really care about it for 1 reason.
# in a database-backed application - custom classes to represent specific data tables.
# A Model is a special class that connects to its corresponding table.
