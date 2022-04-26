require "pry"

def choice_exersice
  puts "Menu" 
  puts "1. Bai 1"
  puts "2. Bai 2"
  puts "3. Bai 3"
  puts "4. Bai 4"
  puts "============================="
  loop do
    print "\nNhap de chon chuong trinh: "
    choice = gets.to_i
    case choice
      when 1
        puts "Ban da chon bai tap 1\n------------"
        exersice_first_new_version
      when 2
        puts "Ban da chon bai tap 2\n------------"
        exersice_second
      when 3
        puts "Ban da chon bai tap 3\n------------"
        exersice_third
      when 4
        puts "Ban da chon bai tap 4\n------------"
        exersice_fourth
      end
    end
end

def exersice_first
  print "Nhap vao so phan tu: "
  n = gets.to_i
  arr = []
  for i in 0..n-1
    print "So thu #{i+1}: "
    arr[i] = gets.to_i
    while arr[i] < 10 || arr[i] > 100
      print "Ban nhap sai, nhap lai: "
      arr[i] = gets.to_i
    end
  end

  print arr
  puts ""
  # Count divisible
  countDivFive = divisible(arr, 5)
  countDivThree = divisible(arr, 3)

  # print result
  printResult(countDivFive,5)
  printResult(countDivThree,3)
end
# end exersice 1

def exersice_first_new_version
  print "Nhap vao so phan tu: "
  n = gets.to_i
  arr = []
  index = 1
  loop do 
    print "So thu #{index}: "
    input = gets.to_i
    if input >= 10 && input <= 100
      arr << input
      if arr.length == n
        break
      end
      index += 1
    else
      print "Ban nhap sai, nhap lai: "
    end
  end
  print arr
  puts ""
  # Count divisible
  countDivFive = divisible(arr, 5)
  countDivThree = divisible(arr, 3)

  # print result
  printResult(countDivFive,5)
  printResult(countDivThree,3)
end
# end exersice version2

def divisible(arr,num)
  resultArray = arr.select do |item|
    item % num == 0
  end
  return resultArray
end

def printResult(arr,num)
  puts "So phan tu chia het cho #{num} la: #{arr.length}"
  arr.each{|item| print "#{item}\t"}
  puts "\n"
end

def exersice_second
  # Enter length
  print "Nhap vao chieu dai: "
  length = gets.to_i
  while length < 0 || length > 100
    print "Ban nhap sai, nhap lai: "
    length = gets.to_i
  end

  # Enter width
  print "Nhap vao chieu rong: "
  width = gets.to_i
  while width < 0 || width > 100
    print "Ban nhap sai, nhap lai: "
    width = gets.to_i
  end

  puts "Chu vi hinh chu nhat la: #{length * 2 + width * 2}"
  puts "Dien tich hinh chu nhat la: #{length * width}"
end
# end exersice 2

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
		when 1..10
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
					return "Mười" + read_one_digit(digit_one).downcase
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
							return read_one_digit(digit_one) + " trăm linh " + read_one_digit(digit_three)
						else
			  			return read_one_digit(digit_one) + " trăm " + read_two_digit(two_digit_end).downcase
						end
				end
			end
  
end

# end exersice 3


def exersice_fourth
  totalEnter = 0
  score = 0
  countFail = 0
  puts "Nhap vao so (0-5) de chay, nhap so < 0 hoac > 5 de thoat"
  loop do
    enterNumber = gets.to_i
    randNumber = rand(0..5)
    puts "Your number: #{enterNumber} \t Random number: #{randNumber}"
    totalEnter += 1
    if enterNumber == randNumber
      score += 1
    end
    if enterNumber < 0 || enterNumber > 5
      break
    end
  end

  countFail = totalEnter - score
  puts "Tong diem: #{score}"
  puts "So lan doan trung: #{score}"
  puts "So lan doan truot: #{countFail}"
  puts "Tong so lan doan: #{totalEnter}"
end
# end exersice 4

choice_exersice



