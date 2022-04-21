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
### Kiến thức cần nắm phần Frontend
#### 1. Mô tả các phần thử HTML dạng inline và block:
**- Inline Element (Các phần tử nội tuyến):** Là những phần tử chiếm không gian chiều ngang theo nội dung của phần tử, không tạo ra dòng mới (xuống dòng) trước và sau phần tử.<br>
**- Danh sách tất cả các Inline element (theo mặc định) của HTML5:**
|    Col 1      |    Col 2       |    Col 3        |     Col 4       |
| :---          |    :----:      |      :------:   |      :------:   |
| `<a>`         | `<img>`        | `<strong>`      | `<dfn>`         |
| `<br>`        | `<output>`     | `<var>`         | `<label>`       |
| `<i>`         | `<span>`       | `<b>`           | `<script>`      |
| `<object>`    | `<tt>`         | `<code>`        | `<sup>`         |
| `<small>`     | `<acronym>`    | `<kbd>`         | `<big>`         |
| `<time>`      | `<cite>`       | `<samp>`        | `<em>`          |
| `<abbr>`      | `<input>`      | `<sub>`         | `<map>`         |
| `<button>`    | `<q>`          | `<bdo>`         | `<select>`      |
| `<textarea>`  |                |                 |                 |<br>

**- Block Element (Các phần tử khối):**  Là những phần tử chiếm hết không gian theo chiều ngang của phần tử chứa nó. Còn chiều cao mở rộng theo nội dung của phần tử này. Trong trình duyệt các phần tử dạng này tạo ra các dòng mới (xuống dòng) ở trước và sau phần tử.<br>
**- Danh sách tất cả các Block element (theo mặc định) của HTML5:**
|    Col 1      |    Col 2       |    Col 3        |     Col 4     |
| :--------:    |    :----:      |      :------:   |   :------:    |
| `<address>`   | `<table>`      |  `<ol>`         | `<li>`        |
| `<div>`       | `<aside>`      |  `<ul>`         | `<pre>`       |
| `<footer>`    | `<dt>`         |  `<canvas>`     | `<figure>`    |
| `<main>`      | `<h1>-<h6>`    |  `<figcaption>` | `<header>`    |
| `<section>`   | `<noscript>`   |  `<hr>`         | `<nav>`       |
| `<article>`   | `<tfoot>`      |  `<p>`          |               |
| `<dl>`        | `<blockquote>` |  `<video>`      |               |
| `<form>`      | `<fieldset>`   |  `<dd>`         |               |<br>

***Lưu ý:**  Có thể chúng ta sẽ nhầm **Block Elements** và **Inline Elements** với **display: block** và **display: inline**. Thực tế, kết quả sau khi sử dụng **Block Elements** và **display: block** hay **Inline Elements** và **display: inline** không khác gì nhau về mặt hiển thị tuy nhiên bản chất của chúng lại khác nhau hoàn toàn. **Block Elements** và **Inline Elements** là những phần tử trong HTML còn display: block** và **display: inline** thuộc về Css.<br>
#### 2. Liệt kê và mô tả chi tiết các thuộc tính của display trong css.
**- Thuộc tính display:** Là thuộc tính hiển thị cho phép xác định sự xuất hiện của các phần tử của trang một cách khác đi so với cài đặt mặc định của chúng.
- Các giá trị kèm theo của thuôc tính display:
1. Display block
- Thuộc tính `display: block` có tác dụng xác định component hiển thị như một khối, khi sử dụng giá trị block, component sẽ đứng một hàng độc lập so với component trước và sau nó.
2. Display inline
- Thuộc tính `display: inline` có tác dụng xác định component được hiển thị theo chiều ngang (không ngắt dòng). Đây là dạng mặc định của các Inline element
3. Display inline-block
- Thuộc tính `display: inline-block` có tác dụng xác định các component sẽ được hiển thị theo khối nhưng là các khối inline.
4. Display inline-table
- Thuộc tính `display: inline-table` có tác dụng xác định component được hiển thị theo dạng khối nội tuyến. Không xuống dòng trước và sau các thành phần cạnh nó.
5. Display list-item
- Thuộc tính `display: list-item` có tác dụng xác định component sẽ được hiển thị như một thẻ li.
6. Display none
- Thuộc tính `display: none` có tác dụng ẩn component được chọn.
7. Display table
- Thuộc tính display: table có tác dụng xác định component được chọn như một thẻ `<table>`. Có ngắt dòng trước và sau các component.
8. Display inherit (Global value[^1])
- Thuộc tính này có tác dụng xác định component được chọn kế thừa từ thuộc tính của thành phần cha. (thành phần bao ngoài).
9. Các giá trị khác của thuộc tính display
- Ngoài các giá trị phổ biến trên thì thuộc tính display còn có các giá trị đi kèm khác:

| Thuộc tính                  | Mô tả                                          |
| :-----------------          | :---------------------------                   |
| display: table-caption      |  Xác định như một thẻ `<caption>` trong table. |
| display: table-column-group |  Xác định như thẻ `<colgroup>` trong table.    |
| display: table-header-group |  Xác định như thẻ `<thead>` trong table.       |
| display: table-footer-group |  Xác định như thẻ `<tfoot>` trong table.       |
| display: table-row-group    |  Xác định như thẻ `<tbody>` trong table.       |
| display: table-cell         |  Xác định như thẻ `<td>` trong table.          |
| display: table-column       |  Xác định như thẻ `<col>` trong table.         |
| display: table-row          |  Xác định như thẻ `<tr>` trong table.          |
| display: run-in             |  Xác định Thành phần sẽ hiển thị như một khối <br>hoặc một nội tuyến, tùy thuộc vào bối cảnh. |
| display: grid               |  Xác định phần tử theo dạng lưới và thiết lập <br>định dạng lưới cho nội dung của nó |
| display: inline-grid        |  Xác định như một phần tử nội <br>tuyến và trình bày nội dung của nó theo mô hình lưới. |
| display: inline-flex        |  Xác định như một phần tử nội tuyến và đưa ra <br>nội dung của nó theo mô hình flexbox. |
| display: flow-root          |   |
| display: contents           |   |
| display: initial            |  Global values[^1]  |
| display: revert             |  Global values[^1]  |
| display: revert-layer       |  Global values[^1]  |
| display: unset              |  Global values[^1]  |

[^1]: [Global values](https://viblo.asia/p/ban-da-that-su-hieu-gia-tri-initial-inherit-va-unset-trong-css-RQqKLPwOK7z)<br>

***Lưu ý:** Khi sử dụng các giá trị của thuộc tính display cần chú ý đến tính tương thích của các trình duyệt khác nhau. Đọc thêm tại **[đây](https://developer.mozilla.org/en-US/docs/Web/CSS/display#browser_compatibility)**

#### Độ ưu tiên trong css
| Thành phần     | Độ ưu tiên (point) |
| :-------       | :--------          |
| Element        |  1                 |
| Class          |  10                |
| Id             |  100               |
| Attribute HTML |  1000              |
| !important     |  10.000            |<br>
- Từ độ ưu tiên mặc định này của các phần tử trong css ta có thể sử dụng thêm [CSS selector](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Selectors) để linh động được độ ưu tiên của các thành phần trong trang.<br>
#### CSS selectors
**Tài liệu tham khảo:**<br>
1. CSS Layout - The display Property:
- https://blog.hubspot.com/website/css-display-property
- https://viblo.asia/p/gioi-thieu-thuoc-tinh-display-trong-css-924lJ2X6lPM
- https://www.w3schools.com/css/css_display_visibility.asp
- https://developer.mozilla.org/en-US/docs/Web/CSS/display<br>
2. HTML Block and Inline Elements: 
- https://www.w3schools.com/html/html_blocks.asp
- https://viblo.asia/p/ban-da-thuc-su-hieu-ve-block-elements-va-inline-elements-chua-4dbZNnOmZYM
- https://developer.mozilla.org/en-US/docs/Web/HTML/Inline_elements<br>
3. CSS Selector:
- https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Selectors