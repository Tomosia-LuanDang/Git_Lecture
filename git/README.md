<p align="center">
<a href="#"><img width="80%" height="auto" src="https://codelearn.io/Media/Default/Users/T_5FFlower/blog/git.png"/></a>
</p>

## Git Lecture

### Git Flow

-  **Tổng quan về Git Flow:** Gitflow chỉ là một ý tưởng trừu tượng về quy trình sử dụng Git, Nó chỉ ra cách thức setup các loại branchs khác nhau và cách thức để merge chúng lại với nhau.

-  **Ba trạng thái trong Git:**

1. Working directory: Là bản sao một phiên bản của dự án.

2. Staging area (Index): Chứa thông tin về những gì sẽ được commit trong

lần commit sắp tới

3. Git directory: Nơi Git lưu trữ các metadata và cơ sở dữ liệu cho dự án của

bạn.

-  **Git branch:** Vai trò cụ thể của các branches khác nhau và thời điểm mà chúng cần tương tác.

### Git Clone

**Dùng dể:**

- Copy một Repo từ máy Remote về Local

- Copy một Repo từ thư mục này sang một thư mục khác

- Copy một Repo từ một Url (https) ví dụ GitHub
### Sử dụng git clone
#### Copy Repo từ thư mục này sang thư mục khác
Trên máy của bạn có một Git Repo ở đường dẫn `path-repo`, bạn có thể copy sang vị trí thực mục hiện tại bằng lệnh:
`git clone path-repo`
Có thể chỉ rõ thư mục cần copy về thay vì tại thư mục hiện tại:
`git clone path-repo path-des`
#### Copy Repo từ server về bằng giao thức ssh
Vị dụ Server có kết nối ssh: user@host, trên đó lưu một Repo ở đường dẫn /github.com/username/repo, thì có thể copy về bằng lệnh:
`git clone user@host:/github.com/username/repo.git`
#### Copy Repo bằng giao thức https
Nhiều dịch vụ Git cung cấp kết nối bằng giao thức (https) ví dụ GitHub, GitLab thì copy về bằng lệnh:
`git clone url-repo`
Với `url-repo` là địa chỉ URL ví dụ: https://github.com/Tomosia-LuanDang/Git_Lecture.git
Mặc định nó sẽ sao chép về nhánh hoạt động, để xem tất cả các nhánh có trên Remote dùng lệnh:
`git branch --remote`
Để có thể lấy các nhánh khác nữa bạn cần chạy lệnh `git fetch` và checkout từng nhánh muốn lấy
### Git Checkout

Là câu lệnh dùng để thay đổi các nhánh làm việc, tạo mới các nhánh làm việc
### Sử dụng git checkout
1. Thay đổi nhánh làm việc: Giả sử đang ở nhánh nào đó, muốn chuyển sang nhánh master thì thực hiện lệnh:
 `git checkout master`
2. Tạo mới 1 nhánh mới: Nếu bạn muốn tạo một nhánh làm việc mới có tên là `branch1` thì sử dụng lệnh:
`git checkout -b branch1`
### Git Add
Là câu lệnh dùng để đưa các tệp từ cùng Working directory sang vùng Staging, hoặc thự mục cụ thể
### Sử dụng git add
Lệnh `git add` có các cách thực hiện với những tham số khác nhau:
### Đưa vào vùng  **staging**  toàn bộ thư mục làm việc
Trường hợp dùng phổ biến là đưa toàn bộ thư mục làm việc vào giám sát, và tạo snapshot trong vùng staging cho chúng thì dùng cú pháp lệnh:
```
git add --all
Hoặc
git add -A
Hoặc add [thư mục hiên tại]
git add  .
```
### Git Commit
