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
- Khác với String, cấp phát vùng nhớ mới cho mỗĩ biến được khai báo mới thì khi khai cáo các symbol có cùng giá trị, bộ nhớ sẽ chỉ cấp phát 1 vùng nhớ và các biến sẽ trỏ đến vùng nhớ chứa symbol đã tạo để lấy giá trị.
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
****
#### 8. Methods
#### 9. Array
#### 10. Hash