## Ruby
### Ưu điểm và nhược điểm của ruby
#### 1.Ưu điểm
- Là ngôn ngữ lập trình hướng đối tượng, mã nguồn mở, dễ tìm kiếm, sử dụng
- Trong ruby tất cả đều là object
- Cung cấp nhiều cách thức đóng gói dữ liệu cho các đối tượng
- Cú pháp đơn giản, giúp người mới dễ dàng thích nghi
- Có trình gỡ lỗi riêng 
- Cung cấp nhiều tính năng hỗ trợ xây dựng web
- Đang được phổ biến rộng rãi hơn
- Hệ sinh thái lớn, cộng đồng đông đúc
#### 2. Nhược điểm
- Cài đặt môi trường không được dễ dàng
- Xử lý chậm hơn so với nhiều ngôn ngữ khác
 ### Kiến thức cơ bản về ruby
 #### 1. Variables
 |Ký tự bắt đầu|Phạm vi biến                      |Mô tả|
 |:------------|:-------------                    |:----|
 |a-z hoặc _   |Local variable (Biến toàn cục)    |Được gọi và chỉnh sửa ở mọi nơi trong chương trình|
 |$            |Global variable (Biến cục bộ)     |Được khai bao và sử dụng trong một khối code nhất định|
 |@            |Instance variable (Biến đối tượng)|Nó chỉ thuộc về một đối tượng riêng lẻ hoặc một đối <br>tượng của một lớp|
 |@@           |Class variable (Biến lớp)         |Được dùng chung cho tất cả các đối tượng trong một lớp|
 |A-Z          |Constant (Hằng số)                |Hằng số cũng giống một biến, nhưng giá trị của nó là <br>mặc định, không thể thay đổi. Nhưng trong thực tế có <br>thể thay đổi giá trị của hằng số|
#### 2. String
- Chuỗi dùng để biểu diễn các ký tự chữ cái, chữ số, khoảng trắng, dấu xuống dòng và các ký tự đặc biệt như !, @, #, $.... Kiểu dứ liệu chuỗi được biểu diễn bằng dấu ' hoặc ".
```ruby
p "Dang Van Luan".class
=> String
```
- Làm việc với chuỗi:
- **So sánh chuỗi:**
```ruby
str1 = "Tomosia"
str2 = 'Tomosia'
puts str1 == str2 #true
```
- **Đếm ký tự chuỗi:**
```ruby
str = "Tomosia Da Nang"
puts str.length #15
```
- **Thay đổi định dạng chuỗi:**
```ruby
str = "Tomosia Da Nang"
puts str.dowcase #tomosia da nang
puts str.upcase #TOMOSIA DA NANG
puts str #Tomosia Da Nang

puts str.dowcase! #tomosia da nang
puts str #tomosia da nang
puts str.upcase! #TOMOSIA DA NANG
puts str #TOMOSIA DA NANG
```
=> Phương thức downcase và upcase không làm thay đổi chuỗi ban đầu. Còn downcase! và upcase! sẽ làm thay đổi chũôi ban đầu.
#### 3. Symbol
- Symbol là một object mà giá trị của nó thường được dùng để đại diện cho tên (ví dụ như tên của khoá trong mảng, tên phương thức trong đối tượng…)
- Khác với String, cấp phát vùng nhớ mới cho mỗĩ biến được khai báo mới thì khi khai cáo các symbol có cùng giá trị, bộ nhớ sẽ chỉ cấp phát 1 vùng nhớ và các biến sẽ trỏ đến vùng nhớ chứa symbol đã tạo để lấy giá trị.<br>
**So sánh Symbol với String:**
- Các symbol không phải là string.
- Symbol có thể được mô tả như là một định danh.
- Symbol giống với String ở chỗ là đều có một số phương thức như: length、upcase、downcase...
- String có thể thay đổi được, còn symbol thì không
- Hiệu suất xử lý của symbol tốt hơn string
- Thực hiện so sánh symbol nhanh hơn string

#### 4. Number
- Trong Ruby bao gồm 5 class tượng trưng cho các kiểu dữ liệu số : Integer, Float, Complex, BigDecimal, Rational. Cả 5 class này đều được kế thừa từ là Numeric.
![Screenshot from 2022-04-25 13-57-57](https://user-images.githubusercontent.com/103919215/165036511-b36cc9ac-63bc-4e84-8e37-3bc19cf49444.png)
- Integer: là kiểu dữ liệu number đơn giản nhất, là class để định nghĩa các số nguyên. Integer là object của 2 class khác là Fixnum và Bignum. Nếu một giá trị của số nguyên có giá trị khoảng 31 bits thì được coi là kiểu Fixnum. Còn đối với các số nguyên có giá trị lớn hơn thì thuộc class Bignum. Thông thường thì kiểu dữ liệu Fixnum sẽ phổ biến hơn là Bignum.
- Float: Đây là class để định nghĩa các số thực, sử dụng dấu phẩy động để định nghĩa.
- Complex: Là class để định nghĩa số phức.
- BigDecimal: Là class để định nghĩa số thực với độ chĩnh xác cao, được biểu diễn dưới các số thập phân
- Rational: Là class định nghĩa phân số.
**Lưu ý:**  trong thực tế chỉ có 2 class được tích hợp sẵn trong Ruby đó là **Integer** và **Float**, còn đối với các kiểu dữ liệu như **Complex**, **BigDecimal**, **Rational** không được tích hợp sẵn, chúng được sử dụng là một phần của **standard library**.
```ruby
2.class
=> Interger

2.class.superclass
=> Numberic

2.1.class
=> Float

2.1.class.superclass
=> Numberic

```
#### 5. Loop
**Vòng lặp for:**
```ruby
for i in 0..9
	puts "Giá trị của biến i là: #{i}"
end
```
**Vòng lặp while:**
```ruby
i = 0
while i < 9 do
	puts "Giá trị của i là: #{i}"
	i += 1
end
```
**Vòng lặp until:**
```ruby
i = 0
until i > 9 do 
	puts "Giá trị của i là: #{i}"
	i += 1
end

```
**Vòng lặp each:**
```ruby
(1..9).each do |item|
	puts "Giá trị là: #{item}"
end
	=> 1 2 3 4 5 6 7 8 9
 Hoặc sử dụng block
 (1..9).each{|item| puts item}
 => 1 2 3 4 5 6 7 8 9
```
#### 6. Interators
- Iterators là các công cụ vòng lặp giúp chúng ta thực hiện truy cập vào các phần tử của một tập các đối tượng một cách tuần tự
- Một số iterator trong Ruby đã được định nghĩa sẵn:<br>

|Inerators|Return|
|:---------|:-----------|
|each|Trả về mảng ban đầu|
|map |Trả về mảng mới tùy thuộc vào cách chúng ta xử lý collection. Không làm thay đổi mảng ban đầu|
|select|Trả về một mảng mới thỏa mãn với điều kiện được định nghĩa trong block|
|collect|Trả về một mảng mới là kết quả của việc lặp các biểu thức trong block|
|inject|Trả về kết quả sau khi thực hiện các phép tính với các phần tử trong <br>mảng, (có thể truyển kết quả đầu vào cho phương thức inject hoặc không )|
|detect|Trả về giá trị đầu tiên của thỏa mãn điều kiên trong block|
|each_with_index|Tương tự với phương thức each nhưng cho phép chúng ta truyền <br>thêm một tham số nữa, đó là chỉ số (index) của các phần tử mảng|
|times|Không áp dụng với collection mà được sử dụng với số, dùng để thực hiện <br>một block với số lần lặp là số đứng trước .time|
#### 7. Coditionals
**Câu lệnh điều kiên if:** Kiểm tra xem một biểu thức có đúng hay không. Nếu đúng thì khối lệnh trước từ khóa end sẽ được thực hiện.

**Câu lệnh if..else** Kiểm tra xem một biểu thức có đúng hay không. Nếu đúng thì khối lệnh trước từ khóa else sẽ được thực hiện. Ngược lại, khối lệnh sau từ khóa else sẽ được thực hiện

**Câu lệnh điều kiện case:** Có tác dụng lựa chọn các câu lệnh để thực thi dựa vào điều kiện đặt ra

**Câu lệnh đều kiện unless:** Câu lệnh unless ngược với câu lệnh if. Thực hiện khối lệnh nếu điều kiện logic kiểm tra là false

#### 8. Methods
Phương thức (hàm) là một khối lệnh thực hiện một chức năng nào đó, tạo hàm để sử dụng lại mã <br>

```ruby
def xinchao
    puts "Xin chào"
end

xinchao                 # gọi phương thức 3 lần
xinchao
xinchao

# In ra:
# Xin chào
# Xin chào
# Xin chào
```

**Tham số của phương thức**<br>
Khai báo phương thức có tham số:
```ruby
def tinhtong(a, b)
    puts a + b
end

tinhtong(1,10)
# In ra 11
```

Tham số mặc định:

```ruby
def tinhtong(a, b = 1)
    puts a + b
end

tinhtong(1)
# In ra 2
```

Ngoài ra bạn có thể bỏ qua () trong khai báo và gọi phương thức
```ruby
def tinhtong a, b = 5
    puts a + b
end

tinhtong 2, 10
# 12
```

Tham số tùy chọn của phương thức:<br>
Có thể dùng ký hiệu * để khai báo tham số tùy chọn, khi gọi hàm bạn điền bao nhiêu giá trị cũng được, các giá trị này tập hợp lại thành mảng và đưa vào phương thức

```ruby
def sum *num
    s = 0;
    num.each {|v| s+=v}
    puts s
end

sum(1,2,3)          # tryền vào mảng 3 phần tử
sum(100)            # truyền vào mảng 1 phần tử
```

Giá trị trả về của phương thức

Các phương thức luôn có giá trị trả về, nếu muốn ấn định một giá trị trả về thì dùng lệnh return. Trong một phương thức nếu không có lệnh return thì mặc định giá trị dòng code cuối cùng trả về
```ruby
def sum *num
    s = 0;
    num.each {|v| s+=v}
    return  s
end

kq = sum(1,2,3)
puts kq
```

#### 9. Array
Mảng là một danh sách các phần tử, khai báo mảng dùng ký hiệu [] rồi liệt kê bên trong nó giá trị các phần tử, mỗi phần tử cách nhau bởi dấu ","
```ruby
# mảng các số
numbers = [1,3,5,7]

# mảng tên
names = ["Nam", "Minh", "Long", "Viet"]
```
Mỗi phần tử trong mảng có một chỉ số, phần tử đầu tiên chỉ số là 0, để truy cập (đọc/gán) một phần tử dùng kỹ hiệu [chỉ-số]

```ruby
names = ["Hùng", "Hà", "Dân"]
puts names[2]                       # Đọc phần tử chỉ số 2 của mảng names
names[2] = "Nguyễn Văn Dân"         # Gán phần tử thứ hai một giá trị mới
puts names[2]                       # Đọc phần tử chỉ số 2 của mảng names
# In ra:
# Dân
# Nguyễn Văn Dân
```

**Các phương thức trong mảng**
|Phương thức|Mô tả|
|:--------|:--------|
|array.length|Trả về số lượng phần tử trong mảng|
|array.sort|Trả về mảng mới có sắp xếp|
|array.uniq|Trả về mảng mới các phần tử trùng nhau giữ lại một|
|array.uniq!|Phần tử trùng nhau giữ lại một|
|array.freeze|Ngăn cản sửa đổi mảng|
|array.include?(obj)|Trả về true nếu có phần tử với giá trị obj|
|array.max|Trả về phần tử lớn nhất|
|array.min|	Trả về phần tử nhỏ nhất|

**Duyệt các phần tử mảng**<br>
Duyệt qua các phần tử mảng bằng lệnh for:

```ruby
arr = [3,5,6,78]
for x in arr
  puts "Giá trị: #{x}"
end
```

Duyệt qua các phần tử bằng phương thức each:

```ruby
a = [ "a", "b", "c" ]
a.each {
    |x|                 # định nghĩa biến lưu phần tử mảng khi duyệt qua
    puts x, " -- "
}
```
**Mảng nhiều chiều - mảng trong mảng**<br>
Mỗi phần tử trong mảng có thể là đối tượng bất kỳ, có nghĩa là có thể là một mảng con. Bằng cách khai báo mảng chứa các phần tử cũng là mảng sẽ hình thành lên mảng nhiều chiều.	
```ruby
a = [[1,2,3], [4,5,6]]
puts a[1][2]                # Truy vấn vào mảng con thứ hai, lấy phần tử thứ ba của mảng con này
# 6
```
#### 10. Hash
Là một cấu trúc dữ liệu được sử dụng để lưu trữ dữ liệu dưới dạng key - value.<br>
Để khai báo tạo ra bảng băm dùng ký hiệu {}, trong đó liệt kê các cặp key => value. Để truy cập đến phần tử Hash thì tương tự như mảng, dùng ký hiệu [index]

```ruby
product = {"name" => "Iphone", "price" => 500, "color" => "white"}
puts product["name"]
# Iphone
```
**Một số phương thức với Hash**
|Phương thức|Mô tả|
|:----------|:----|
|hash.delete(key)|Xóa phần từ có chỉ số key|
|hash.key(value)|Trả về key của value trong hash, nếu không thấy trả về nil|
|hash.invert|Tạo hash mởi bằng cách đảo thứ tự hash gốc|
|hash.keys|Trả về mảng chứa các key|
|hash.values|Trả về mảng chứa các value|
|hash.length|Trả về số phần tử hash|

Giống như mảng, các giá trị trong hash có thể là một hash khác
```ruby
cars = {
  bmw: { year:2016, color:"red"},
  mercedes: { year:2012, color:"black"},
  porsche: { year:2014, color:"white"}
}

puts cars[:bmw][:color]
# outputs "red"
```

**Duyệt phần tử**
Để duyệt qua các phần tử của các hash có thể dùng ``each``
```ruby
sizes = {svga:800, hd:1366, uhd:3840}

sizes.each do |key, value|
  puts "#{key}=>#{value}"
end
```
Cũng có thể viết theo dạng block:

```ruby
sizes = {svga:800, hd:1366, uhd:3840}
sizes.each { |key, value| puts "#{key}=>#{value}" }
```
