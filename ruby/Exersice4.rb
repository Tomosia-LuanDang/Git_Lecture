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

exersice_fourth
