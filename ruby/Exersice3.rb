def exersice_third
  print "Number 1: "
  number1 = enterNumber

  print "Number 2: "
  number2 = enterNumber

  print "Number 3: "
  number3 = enterNumber
	print "Số thứ nhất: "
	read_number(number1)
	print "Số thứ hai: "
	read_number(number2)
	print "Số thứ ba: "
	read_number(number3)
end

def enterNumber
  num = gets.to_i
	while num < 0 || num >= 1000
		print "Bạn nhập sai, nhập lại: "
		num = gets.to_i
	end
	return num
end

def read_number(num)
	case num
		when 0..10
			puts read_one_digit(num)
		when 11..99
			puts read_two_digit(num)
		when 100..999
			puts read_three_digit(num)
		end	
end

def read_one_digit(num)
	arr = ["Không", "Một", "Hai", "Ba", "Bốn", "Năm", "Sáu", "Bảy", "Tám", "Chín", "Mười"]
	return arr[num]
end

def read_two_digit(num)
	digit_one = num / 10
	digit_two = num % 10
	case digit_one
		when 1
			case digit_two
				when 1
					return "Mười một"
				when 5
					return "Mười lăm"
				else
					return "Mười " + read_one_digit(digit_two).downcase
			end
		else
			case digit_two
				when 0
					return read_one_digit(digit_one) + " mươi"
				when 1
					return read_one_digit(digit_one) + " mươi mốt"
				when 4
					return read_one_digit(digit_one) + " mươi tư"
				when 5
					return read_one_digit(digit_one) + " mươi lăm"
				else
					return read_one_digit(digit_one) + " mươi " + read_one_digit(digit_two).downcase
			end
		end
end

def read_three_digit(num)
  digit_one = num / 100
	two_digit_end = num % 100
	digit_three = num % 10
 
	
		case two_digit_end
			when 0
			  return read_one_digit(digit_one) + " trăm"
			else
				case two_digit_end
					when 10
					return read_one_digit(digit_one) + " trăm mười"
					else
						if two_digit_end < 10
							return read_one_digit(digit_one) + " trăm linh " + read_one_digit(digit_three).downcase
						else
			  			return read_one_digit(digit_one) + " trăm " + read_two_digit(two_digit_end).downcase
						end
				end
			end
end 

exersice_third