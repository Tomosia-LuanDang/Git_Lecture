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

exersice_second