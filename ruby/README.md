## Ruby
[Ưu điểm](#advantage)<br>
[Nhược điểm](#disadvantage)<br>
[Kiến thức cơ bản về ruby](#basic-knowledge)<br>
>[1. Variables](#variables)<br>
>[2. String](#string)<br>
>[3. Symbol](#symbol)<br>
>[4. Number](#number)<br>
>[5. Loop](#loop)<br>
>[6. Interators](#interators)<br>
>[7. Coditionals](#coditionals)<br>
>[8. Methods](#methods)<br>
>>[8.1. Block, Proc, Lambda](#block-proc-lambda)<br>
>>[8.2. Monkey patching](#monkey-patching)<br>
>>[8.3. Metaprograming](#metaprograming)<br>

>[9. Array](#array)<br>
>[10. Hash](#hash)<br>

### Ưu điểm và nhược điểm của ruby
<a id="advantage"><h4>Ưu điểm</h4></a><br>

- Là ngôn ngữ lập trình hướng đối tượng, mã nguồn mở, dễ tìm kiếm, sử dụng
- Trong ruby tất cả đều là object
- Cung cấp nhiều cách thức đóng gói dữ liệu cho các đối tượng
- Cú pháp đơn giản, giúp người mới dễ dàng thích nghi
- Có trình gỡ lỗi riêng
- Cung cấp nhiều tính năng hỗ trợ xây dựng web
- Đang được phổ biến rộng rãi hơn
- Hệ sinh thái lớn, cộng đồng đông đúc

<a id="disadvantage"><h4>Nhược điểm</h4></a><br>

- Cài đặt môi trường không được dễ dàng
- Xử lý chậm hơn so với nhiều ngôn ngữ khác

<a id="basic-knowledge"><h3> Kiến thức cơ bản về ruby</h3></a><br>

<a id="variables"><h4>1. Variables</h4></a><br>

 |Ký tự bắt đầu|Phạm vi biến                      |Mô tả|
 |:------------|:-------------                    |:----|
 |a-z hoặc _   |Local variable (Biến toàn cục)    |Được gọi và chỉnh sửa ở mọi nơi trong chương trình|
 |$            |Global variable (Biến cục bộ)     |Được khai bao và sử dụng trong một khối code nhất định|
 |@            |Instance variable (Biến đối tượng)|Nó chỉ thuộc về một đối tượng riêng lẻ hoặc một đối <br>tượng của một lớp|
 |@@           |Class variable (Biến lớp)         |Được dùng chung cho tất cả các đối tượng trong một lớp|
 |A-Z          |Constant (Hằng số)                |Hằng số cũng giống một biến, nhưng giá trị của nó là <br>mặc định, không thể thay đổi. Nhưng trong thực tế có <br>thể thay đổi giá trị của hằng số|

<a id="string"><h4>2. String</h4></a><br>

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

<a id="symbol"><h4>3. Symbol</h4></a><br>

- Symbol là một object mà giá trị của nó thường được dùng để đại diện cho tên (ví dụ như tên của khoá trong mảng, tên phương thức trong đối tượng…)
- Khác với String, cấp phát vùng nhớ mới cho mỗĩ biến được khai báo mới thì khi khai cáo các symbol có cùng giá trị, bộ nhớ sẽ chỉ cấp phát 1 vùng nhớ và các biến sẽ trỏ đến vùng nhớ chứa symbol đã tạo để lấy giá trị.<br>

```ruby
a = :tomosia    # a lưu trữ một symbol, symbol :tomosia được phát sinh
b = :tomosia    # b lưu trữ một symbol, symbol này chính là đối tượng được lưu trong a chứ không phát sinh

a.object_id
=> 2318108
b.object_id
=> 2318108
```
**So sánh Symbol với String:**
- Các symbol không phải là string.
- Symbol có thể được mô tả như là một định danh.
- Symbol giống với String ở chỗ là đều có một số phương thức như: length、upcase、downcase...
- String có thể thay đổi được, còn symbol thì không
- Hiệu suất xử lý của symbol tốt hơn string
- Thực hiện so sánh symbol nhanh hơn string

<a id="number"><h4>4. Number</h4></a><br>

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
<a id="loop"><h4>5. Loop</h4></a><br>

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
<a id="interators"><h4>6. Interators</h4></a><br>

- Iterators là các công cụ vòng lặp giúp chúng ta thực hiện truy cập vào các phần tử của một tập các đối tượng một cách tuần tự
- Một số iterator trong Ruby đã được định nghĩa sẵn:<br>

|Inerators|Return|
|:---------|:-----------|
|each|Trả về mảng ban đầu|
|map |Trả về mảng mới tùy thuộc vào cách chúng ta xử lý collection. Không làm thay đổi mảng ban đầu|
|select|Trả về một mảng mới thỏa mãn với điều kiện được định nghĩa trong block|
|reject|Trả về một mảng mới không thỏa với điều kiện được định nghĩa trong block|
|collect|Trả về một mảng mới là kết quả của việc lặp các biểu thức trong block|
|inject|Trả về kết quả sau khi thực hiện các phép tính với các phần tử trong <br>mảng, (có thể truyển kết quả đầu vào cho phương thức inject hoặc không )|
|detect|Trả về giá trị đầu tiên của thỏa mãn điều kiên trong block|
|each_with_index|Tương tự với phương thức each nhưng cho phép chúng ta truyền <br>thêm một tham số nữa, đó là chỉ số (index) của các phần tử mảng|
|times|Không áp dụng với collection mà được sử dụng với số, dùng để thực hiện <br>một block với số lần lặp là số đứng trước .time|

<a id="coditionals"><h4>7. Coditionals</h4></a><br>

**Câu lệnh điều kiên if:** Kiểm tra xem một biểu thức có đúng hay không. Nếu đúng thì khối lệnh trước từ khóa end sẽ được thực hiện.

**Câu lệnh if..else** Kiểm tra xem một biểu thức có đúng hay không. Nếu đúng thì khối lệnh trước từ khóa else sẽ được thực hiện. Ngược lại, khối lệnh sau từ khóa else sẽ được thực hiện

**Câu lệnh điều kiện case:** Có tác dụng lựa chọn các câu lệnh để thực thi dựa vào điều kiện đặt ra

**Câu lệnh đều kiện unless:** Câu lệnh unless ngược với câu lệnh if. Thực hiện khối lệnh nếu điều kiện logic kiểm tra là false

<a id="methods"><h4>8. Methods</h4></a><br>

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

Ngoài ra có thể bỏ qua () trong khai báo và gọi phương thức
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

**Class method và instance method**<br>
Class method là method mà được gọi trên một lớp, còn instance method là method mà được gọi trên thể hiện của một lớp (đối tượng).
```ruby
class Student
  def self.name
    puts 'Name'
  end

  def age
    puts 'Age'
  end
end

Foo.name # "class method"
Foo.age  # => NoMethodError: undefined method ‘baz’ for Foo:Class

Foo.new.name # instance method
Foo.new.age  # => NoMethodError: undefined method ‘bar’ for #<Foo:0x1e820>
```

<a id="block-proc-lambda"><h4>8.1. Block, Proc, Lambda</h4></a><br>

**Block**<br>
Block đơn giản chỉ là tập hợp các lệnh thành một khối (method) được đặt trong dấu ``{...}`` hoặc ``do...end``<br>
Ví dụ:
```ruby
(1..9).each do |item|
  puts item
end

# Hoặc

(1..9).each{ |item| puts item }
```
Cả hai cách viết này đều có chức năng giống nhau<br>

**Từ khóa ``Yield``**<br>
Yield là một cách để thực hiện một khối lệnh trong một phương thức bất kì. Nghĩa là khối lệnh đó không được viết trực tiếp trong phương thức mà được viết ở một nơi khác, nhưng được gọi và thực hiện trong phương thức.<br>
***Ví dụ***
```ruby
def start
  puts "Luan dep trai"
  yield
  puts "Luan van dep trai"
end

start do
  puts "Luan di cat toc"
end

=> Luan dep trai
=> Luan di cat toc
=> Luan van dep trai
```

Ở đây, từ khóa yield được viết trong phương thức start, nó chỉ định thực hiện một block bên ngoài sau khi thực hiện câu lệnh ``puts "Luan dep trai"``
và trước khi thực hiện câu lệnh ``puts "Luan van dep trai"``.<br>
Khi dùng từ khóa yield, nó sẽ có một thao tác chờ, chờ cho đến khi khối lệnh bên ngoài được thực thi xong thì mới tiếp tục thực hiện cách câu lệnh bên trong phương thức.<br>
Mặc dù là một cách để gọi khối lệnh, nhưng tôi thấy nó khác giống phương thức ở chỗ, nó có cũng có thể truyền tham số cho block.
```ruby
def sum
  yield(9)
end

sum { |n| puts "#{n + 1}"}

=> 10
```

**Proc**<br>
- Là một khối lệnh mà được gom lại thành một đối tượng
- Nó chứa trong nó  các biến, các tác vụ và như vậy thông qua đối tượng proc ta có thể chạy khối lệnh bất kỳ khi nào muốn
```ruby
xinchao = Proc.new do |name|
  puts "Xin chào #{name}"
end

xinchao.call "LuanDang"
# Welcome LuanDang
```
Tuy nhiên, proc là một đối tượng chứ không phải phương thức, nên nó có thể làm tham số cho các phương thức

```ruby
tong = Proc.new do |a, b|
    a + b
end

hieu = Proc.new do |a, b|
    a - b
end

def tinhtoan(pheptinh, a, b)
  puts "Kết quả tính #{pheptinh.call(a, b)}"

end

# Sử dụng Proc làm tham số của phương thức
tinhtoan(tong, 1, 2)
tinhtoan(hieu, 1, 2)
# Kết quả tính 3
# Kết quả tính -1
```

Proc không check số lượng tham số truyền vào:
```ruby
sum = Proc.new do |n|
  puts n + 3
end

sum.call(2) # => 5
sum.call(2,3,4) # => 5
```
Khi thực hiện câu lệnh ``return`` trong proc, phương thức chứa nó cũng sẽ lập tức return

```ruby
def hello
  puts "Before proc"
  proc = Proc.new do
    puts "Before return"
    return
    puts "After return"
  end
  proc.call
  puts "After proc"
end

hello
# => Before proc
# => Before return
```


**Lambda**
- Lambda là một function và không có tên cụ thể
- Nó có thể được sử dụng để gán 1 đoạn code
- Là 1 object
- Trả về 1 giá trị như các function khác
- Ví dụ:
```ruby
sum = lambda do |n|
  puts n + 3
end

sum.call(2) # => 5

sum1 = lambda { |n| puts n + 3 }
sum1.call(2) # => 5


sum2 = -> (n) { puts n + 3}
sum2.call(2) # => 5

```
Lambda check số lượng tham số truyền vào:
```ruby
sum = lambda do |n|
  puts n + 3
end

sum.call(2) # => 5
sum.call(2,3,4) #  (wrong number of arguments): wrong number of arguments (given 3, expected 1)
```
Khi thực hiện câu lệnh ``return`` trong lambda, phương thức chứa nó sẽ không bị return

```ruby
def hello
  puts "Before proc"
  lambda = lambda do
    puts "Before return"
    return
    puts "After return"
  end
  lambda.call
  puts "After proc"
end

hello
# => Before proc
# => Before return
# => After proc
```


<a id="monkey-patching"><h4>8.2. Monkey patching</h4></a><br>

- Là cách mở rộng hoặc thay đổi nhưng method trong các core class nhằm tạo ra sự thay đổi động cho class hoặc module ở chết độ runtime.<br>
- Là một phương pháp cho phép mở rộng hay chỉnh sửa một hệ thống phần mềm 1 cách tạm thời và cục bộ.<br>
- Trong ruby, class String hỗ trợ phương thức **upcase** để định dạng chuỗi thành chữ hoa:
```ruby
"Tomosia".upcase
=> "TOMOSIA"
```
Ta có thể override phương thức **upcase** như sau:
```ruby
class String
  def upcase
    self.downcase
  end
end

"TOMOSIA".upcase
=> "tomosia"
```
Đó là một ví dụ về monkey patching trong ruby<br>
<br>
<br>

<a id="metaprograming"><h4>8.3. Metaprograming</h4></a><br>

 Định nghĩa một cách đơn giản, Metaprogramming là một kỹ thuật giúp code của chúng ta "động" hơn, ngắn gọn hơn, mở hơn, tránh bị lặp lại những thứ giống nhau.<br>
<br>

**Metaprogramming basic:**<br>
***Hàm send():***<br>
- ``#send( )`` là một instance method của Object class
- Hàm ``send()`` dùng để gọi các hàm một cách "động"
- Hàm ``send()`` tránh lặp lại các hàm có nội dung tương tự nhau
- Ví dụ cách sử dụng hàm ``send()``
```ruby
class Developer
  def intro(*param)
    "I'm a passionate " + param.join(" ")
  end
end
obj = Developer.new
puts(obj.send(:intro, "Ruby,", "PHP,", "Java"))
# => I'm a passionate Ruby, PHP, Java
```
***Module#define_method():***<br>
- ``Module#define_method( )`` là một private instance method của class Module
- ``define_method()`` là cách để tạo ra method một cách "động"
- Thay vì tạo ra một hàm "động" như dùng hàm ``send()`` thì ``define_method()`` dùng để tạo ra các hàm một cách "động"
- Cách dùng ``define_method()`` như sau:
```ruby
class Dog
  define_method "action" do
    puts "Run on 4 legs"
  end

  define_method "color" do
    puts "Black and white"
  end
end

dog = Dog.new
dog.action  # => Run on 4 legs
dog.color  # => Black and white
```
***Kernel#method_missing():***<br>
- ``Kernel#method_missing() `` được trả về khi xảy ra lỗi NoMethodError
- ``method_mising()`` cũng là một private method, là một cách để không raise errors khi method không được khai báo
- Cách dùng ``method_missing()`` rất đơn giản:
```ruby
class Animal
  def walk
    puts "I am walking!"
  end
end
cow = Animal.new
cow.walk
=> "I am walking!"
```
- Tạo một class Animal và định nghĩa một instance method ``walk``. Một instance của class này, giả sử như là một chú bò. ``walk`` là hành động tự nhiên mà mọi con bò có thể thực hiện được
- Thử gọi một phương thức ``fly`` không được định nghĩa trong lớp Animal, chương trình sẽ báo lỗi:
```ruby
cow.fly
# => `method_missing': undefined method `flys' for #<Animal:0x00007fd9184766b8> (NoMethodError)
```
- Bây giờ, thay vì nhận lại một exception ``NoMethodError``, tôi muốn nó trở nên rõ ràng hơn, cụ thể là hiển thị thông điệp: "Sorry, cows can’t fly!" thì sử dụng ``method_missing``.  Nó cho phép ta có thể tùy chỉnh những thông báo lỗi, dựa trên khái niệm method overriding của lập trình hướng đối tượng:
```ruby
class Animal
  def method_missing method, *args, &block
    if method.to_s == "fly"
      puts "Sorry, cows can’t fly!"
    else
      super
    end
  end
end

cow = Animal.new
cow.fly
# => "Sorry, cows can’t fly!"
```
Cú pháp của ``method method_missing ``:
```ruby
def method_missing method, *args, &block
  # return something
end
```
Method này nhận vào 3 tham số:
- ``method``: tên của phương thức chưa tồn tại/chưa được định nghĩa mà object gọi tới. Tham số bắt buộc này thường xuất hiện dưới dạng một symbol và sẽ được chuyển đổi thành string khi sử dụng
- ``*args``: mảng chứa danh sách các tham số của phương thức 'bị thiếu'. Đây là tham số tùy chọn, không bắt buộc phải có
- ``&block``: nếu tham số này xuất hiện, nó thể hiện phương thức đang được gọi có đi kèm một block ở tận cùng, sau danh sách tham số

**Metaprogramming advance:**
<br>
<br>

***Method eval():***
- ``eval( )`` là một method trong module Kernel.
- Phương thức ``eval()`` dùng để execute code trong một String.
- Ví dụ cách sử dụng phương thức ``eval()``:
```ruby
str = "Xin chao "
puts eval("str + 'anh Luan dep trai'")
# => Xin chao anh Luan dep trai

# Hoặc
def sum(a,b)
  return a + b
end

puts eval("sum(2,4)")
# => 6
```
***Method #instance_variable_get():***
- ``#instance_variable_get( )`` là một object method.
- ``instance_variable_get()`` trả về giá trị biến instance của object hoặc nil nếu biến đó chưa được set.
- Nếu biến instance không tồn tại thì ``instance_variable_get()`` sẽ trả về NameError exception.
- Đầu vào của method ``instance_variable_get()`` có thể là string hoặc symbol, bao gồm ký tự @ trong tên biến.
- Cách dùng ``instance_variable_get()`` như sau:
```ruby
class Person
  def initialize(p1, p2)
  @name, @age = p1, p2
  end
end

per = Person.new("Luan", 22)
puts per.instance_variable_get(:@name) # => Luan
puts per.instance_variable_get("@age") # => 22
```
***Method #instance_variable_set():***
- ``#instance_variable_set( )`` tương tự như ``#instance_variable_get( )``, là một object method.
- ``instance_variable_set()`` dùng để set giá trị cho biến instance của object.
- Tên biến truyền vào của phương thức instance_variable_set() có thể là string hoặc symbol và phải bao gồm ký tự @ tương tự method ``instance_variable_get()``.
- ``instance_variable_set()`` có thể set giá trị cho biến đã tồn tại hoặc tạo biến instance chưa có.
- Cách dùng ``instance_variable_set()`` như sau:
```ruby
class Person
  def initialize(p1, p2)
  @name, @age = p1, p2
  end
end

per = Person.new("Luan", 22)
puts per.instance_variable_get(:@age) # => 22
per.instance_variable_set(:@age, 21)
puts per.inspect
#<Person:0x00007f85b103a028 @name="Luan", @age=21>
```
Ngoài ra trong Metaprograming advance còn có các method khác tương tự:
|#|Method|
|-----|----|
|1|instance_eval|
|2|module_eval|
|3|class_variable_get|
|4|class_variable_set|
|5|const_get|
|6|const_set|
|7|class_variables|

<a id="array"><h4>9. Array</h4></a><br>

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
<a id="hash"><h4>10. Hash</h4></a><br>

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

**Duyệt phần tử**<br>
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
