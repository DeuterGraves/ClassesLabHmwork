arr = []
str = ""
h = { }

Built in classes within Ruby - utilisation classes:
arr =  Array.new
str = String.new
h = Hash.new
Object = class


# Objects/Strings and Hashes
#
# Class Array with new key word - assigning the variable
#
# class template - as defined characteristics,
#
# whats the difference between a class and an object
#
# Think of a housing scheme - based on a blueprint (class) each house is an object or instance of that class.
# Classes all start with a capital letter


class Person
  def intialize(input_name, input_age)
    @name = input name
    @age = input_age
  end
