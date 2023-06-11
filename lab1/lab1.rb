
# 1- String Copies
def string_copies(str, n)
    return str * n
end
# puts string_copies("Mazen",2)
# # # #

# 2- "If" start checker
def if_checker(str)
    return str.start_with?("if")      
end
# puts if_checker("ifHello")
# # # #

# 3- Replace first and last chars
def replace_first_last(str)
    first_char = str[0]
    last_char = str[-1]
    middle_chars = str[1...-1]
    return last_char + middle_chars + first_char
end
# puts replace_first_last("Mazen")
# # # #

# 4- Add last char to beg and end
def add_last_char(str)
    last_char=str[-1]
    return last_char+str+last_char
end
# puts add_last_char("Mazen")
# # # #

# 5- Check leap year or not
def leap_year_checker(year)
    if year % 4 == 0
        if year % 100 == 0
            if year % 400 == 0
                return true
            else
                return false
            end
        else
            return true
        end
    else
        return false
    end
end
# puts leap_year_checker(2000)
# puts leap_year_checker(2200)
# # # #

# 6- Shift numbers
def shift_numbers(arr)
    first=arr.shift
    arr.push(first)
    return arr
end
# puts shift_numbers([1,2,3,4,5])
# # # #

# 7- Sum of array numbers except 17
def sum_except_seventeen(arr)
    sum=0
    skip=false
    for n in arr do
        if skip==false
            if n!=17
                sum+=n
            else # if 17
                skip=true
            end
        else #if true
            skip=false
        end
    end
    return sum
end
ar=[1,2,17,3,4,5,17,1]
# puts sum_except_seventeen(ar)
# # # #

# 8- Two sum
def two_sum(arr,target)
    hash={}
    index=0
    for n in arr do
        wanted=target-n
        if hash[wanted]
            return [hash[wanted],index]
        end
        hash[n]=index
        index+=1   
    end
end
# nums=[2,3,4,5,6]
# target=9
# puts two_sum(nums,target)
# # # #