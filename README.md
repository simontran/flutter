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
