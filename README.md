Dự án này dùng Robot Framework và SeleniumLibrary để tự động kiểm thử chức năng đăng nhập trên website.

🛠 Công nghệ sử dụng
Robot Framework 7.2.2

SeleniumLibrary 6.7.1

Python 3.12

Selenium 4.30.0

📦 Cài đặt
Cài Python (>=3.10).

Cài các thư viện cần thiết:

bash
Sao chép
Chỉnh sửa
pip install robotframework
pip install robotframework-seleniumlibrary
📁 Cấu trúc thư mục
lua
Sao chép
Chỉnh sửa
chuong4/
├── login_tests.robot
├── output.xml
├── report.html
└── log.html
login_tests.robot: File chứa các test cases.

output.xml: File output chi tiết của lần chạy test.

report.html: Báo cáo test tổng quan.

log.html: Log chi tiết từng bước test.

🧪 Chạy test
Trong thư mục dự án:

bash
Sao chép
Chỉnh sửa
robot login_tests.robot
📋 Các kịch bản kiểm thử
✅ Đăng nhập thành công với tài khoản hợp lệ.

✅ Đăng nhập thất bại với tài khoản không hợp lệ.

✅ Đăng xuất sau khi đăng nhập thành công.

⚠️ Có 1 test case bị lỗi do test bị để trống (Test cannot be empty.) → cần xóa hoặc hoàn thiện test case đó.

📑 Ghi chú
Nếu cần sửa nội dung test, chỉnh file login_tests.robot.

Mở report.html để xem báo cáo test sau mỗi lần chạy.

Đảm bảo đã cài đúng ChromeDriver phiên bản tương thích với trình duyệt Chrome.

