### Bootstrap 4:
- Bootstrap là một framework bao gồm các HTML, CSS và JavaScript template dùng để phát triển website chuẩn responsive. Hỗ trợ lập trình viên giúp xây dựng giao diện một cách dễ dàng hơn, và có được 1 quy chuẩn chung trong việc đặt tên class.
#### Xây dựng layout bằng bootstrap
- Với bootstrap, màn mình giao diện được chia ra 12 phần, giúp cho việc chia layout được dễ dàng và đa dạng.
#### Hệ thống lưới (grid) trong Bootstrap: 
- Bootstrap sử dụng container và các lớp về dòng (row), cột (colunm) phối hợp với nhau để tạo ra một hệ thống lưới giao diện. Trước tiên cần biết là - những phần tử hàng, cột sử dụng kỹ thuật CSS flexbox để xây dựng.
- Lưới layout được tạo ra từ các hàng bằng cách sử dụng class .row, trong hàng các phần tử con tạo thành cột (hàng) bằng cách sử dụng class có tiền tố là .col-, .col-sm-, .col-md-, .col-lg-, .col-xl-
#### Chia hàng thành nhiều cột:
- Một hàng có độ rộng chia làm 12 phần, từ đó mỗi tiền tố có 12 lớp, ví dụ từ .col-sm-1 đến .col-sm-12, nếu sử dụng class .col-sm-2 có nghĩa là cột đó có động rộng chiếu 2/12 của độ rộng cột
- Do .col có thiết lập flex-grow: 1 nên nó được dùng nếu muốn chia một hàng thành nhiều cột (bằng số phần tử sử dụng .col) có độ rộng bằng nhau
- Nếu muốn thiết lập độ rộng riêng cho một cột nào đó thì sử dụng các phần tử từ col-1 ... col-12, ví dụ nếu sử dụng col-6 nó sẽ chiếm 6 phần của hàng (hàng chia làm 12 phần). Ví dụ sau cột số 2 chiếm 6/12 độ rộng hàng, còn lại 6 phần chia đều cho 3 phần tử còn lại
