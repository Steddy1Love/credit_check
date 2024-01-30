card_number = "5541808923795240"

# Your Luhn Algorithm Here

# Output
## If it is valid, print "The number [card number] is valid!"
## If it is invalid, print "The number [card number] is invalid!"
def is_valid?
#convert string to integers in array
    arrnum1 = card_number.to_i.digits.reverse

#split into even and odd
    arrnum2 = arrnum1.select.with_index{|element, index| index.zero? ? index : index % 2 == 0} 
    arrnum3 = arrnum1.select.with_index{|element, index| (index % 2) != 0}

#double first array elements
    doubled_num = arrnum2.map{|element| element * 2}

#define sum method to convert to string -> char -> count characters as integers -> sum them together
    def sum_digits(array)
        array.to_s.chars.map(&:to_i).sum
    end

    results_num = sum_digits(doubled_num) + sum_digits(arrnum3)

    if results_num % 10 == 0
        print "The number #{card_number} is valid!"
    else
        print "The number #{card_number} is invalid!"
end
