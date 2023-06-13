# 1- class user
# class User
#     @@name="user"
#     def initialize(name="default")
#         @name=name
#     end
#     def self.name 
#         @@name
#     end
#     def self.name=(newName)
#         @@name=newName
#     end
#     def name=(newName)
#         @name=newName
#     end
#     def name
#         @name
#     end
# end
# user=User.new
# puts user.name
# user.name="Mazen"
# puts user.name
# puts User.name
# User.name="Set new"
# puts User.name
# p User.ancestors


# # 2- class math
# class MathTest
#     def calc(num1, num2, operator)
#       validate_number(num1)
#       validate_number(num2)
#       case operator
#       when "+"
#         result = num1 + num2
#       when "-"
#         result = num1 - num2
#       when "*"
#         result = num1 * num2
#       when "/"
#         if num2.zero?
#           raise "Cannot divide by zero"
#         else
#           result = num1 / num2
#         end
#       else
#         raise "Unsupported operator"
#       end 
#       result
#     end  
#     private def validate_number(num)
#       if num.nil? || num == "" || !num.is_a?(Numeric)
#         raise "Invalid number"
#       end
#     end
#   end

# p MathTest.new.calc(3,5,"*")


# 3- Module with person class
# require 'date'
# module MyModule
#     class Person
#         def initialize(fname,lname,birth_date,age=25)
#             @fname,@lname,@birth_date,@age=fname,lname,Date.parse(birth_date),age                     
#         end
#         def get_person_data
#             [@fname,@lname,@birth,@age]            
#         end
#         def welcome
#             puts "Welcome #{@fname+@lname}"
#             puts "Your age in years: #@age"
#             puts "Your age in months: #{@age*12}"
#             puts "Your age in days: #{@age*365}"
#             puts "You were born on: #{@birth_date}"
#         end
#     end
# end
# per=MyModule::Person.new("Mazen","Elsayegh","1998/02/12",25)
# per.welcome