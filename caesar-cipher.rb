# ask the user to input a string and a number
# save the number and string into a variable
# string into an array
puts "Enter a string"
str = gets.chomp
# change the number to int 
puts "Enter a number"
num = gets.chomp.to_i

l_alphabet = ("a".."z").to_a
u_alphabet = ("A".."Z").to_a

newstr =""
# make a method that loops through the alphabet
str.each_char do |letter|
    if !l_alphabet.include?(letter) && !u_alphabet.include?(letter)
        newstr+=letter
    else
        if l_alphabet.include?(letter)
            index = l_alphabet.index(letter)+ num
            if index>26
                index = index % 26
            end
            newstr+=l_alphabet[index]
            else
                index = u_alphabet.index(letter) + num
                if index>26
                    index=index%26
                end
                newstr += u_alphabet[index]
            end
        end
    end
    puts newstr




# when it hits z warp back to a
# exlude puntuations
# move the string by the input number
# return the result 