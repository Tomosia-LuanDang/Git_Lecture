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

#run


exersice_first
#exersice_first_new_version