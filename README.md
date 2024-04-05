STEP 1: tạo UT theo thiết kế trên file main.dart

STEP 2: tách nhỏ thư mục từ main.dart　→　widget

    + header
    + body: card_body_widget.dart
    + button
    ※ Có 2 cách import vào lại main.dart
      - package:dart/..
      - widget/..

STEP 3: tạo showModelButton

    + button: card_model_button.dart

TIP
１ー hiển thị Widget Inspector

    + Ctrl + Shift + P
    + >Dart: Open DevTools
    + Open Widget Inspector Page

２ー cài đặt thư viện bên thứ 3

    + Cách 1: mở file pubspec.yaml, tìm đến mục dependencies, thêm tên thư viện vào dưới
            Ví dụ:
            dependencies:
              confirm_dialog: ^1.0.3

    + Cách 2:
        - Ctrl + Shift + P
        - >Add Dependency
        - nhập đúng tên thư viện, ví dụ: confirm_dialog
    
