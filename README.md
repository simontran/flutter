A. CÁC EXTENSION VS-CODE CẦN THIẾT CHO LẬP TRÌNH FLUTTER
-----------------------------------------------------
   １ー Dart                      : ngôn ngữ lập trình
   
   ２ー Flutter                   : framework
   
   ３ー Dracula Official          : theme
   
   ４ー Bracket Pair Color DLW    : theme (đổi màu cho các cặp ngoặc)
   
   ５ー vscode-icons              : tạo các icon cho các thư mục source
   
   ６ー Dart Data Class Generator : 
   
   ７ー 
   
   ８ー 
   
   ９ー   
   
   ※ Nhấn tổ hợp phím bên dưới, tìm theo tên extension
      - Windows: Ctrl + Shift + P
      - Mac: Cmd + Shift + P
   ※ Một số setting hữu ích
      - Windows: Ctrl + Shift + P
      - Mac: Cmd + Shift + P
      - tìm theo từ khóa: Open User Settings (JSON)
      - thêm các dòng bên dưới:
         // Tự động xuống dòng sau dấu phẩy
         "editor.formatOnSave": true,
         // Preview các dấu chỉ dẫn
         "dart.previewFlutterUiGuides": true,
         // Tự động fix code khi save, ví dụ: tự động thêm const
         "editor.codeActionsOnSave": {
            "source.fixAll": "explicit"
         },

B. TIPS
-----------------------------------------------------
   １ー comment out dòng code
      - Windows: Ctrl + /
      - Mac: Cmd + /
      
   ２ー 
   ３ー 
   ４ー 
   ５ー 
   ６ー 
   ７ー 
   ８ー 
   ９ー 
   
C. SYNTAX
-----------------------------------------------------
   １ー dynamic
      - kiểu dữ liệu chấp nhận mọi kiểu giá trị
      - không cần khởi tạo giá trị ban đầu cho nó
      - mặc định có giá trị null
      * tốn dung lượng lưu trữ hơn var
      
   ２ー var
      - tương tự dynamic nhưng,
        * khi khai báo giá trị khởi tạo ban đầu ví dụ: var str = 'String';
          thì kiểu dữ liệu của a sẽ là string và không thay đổi, nếu set lại không đúng kiểu sẽ báo lỗi
          dynamic thì có thể
          
   ３ー late
      - khai báo biến, khởi tạo sau
      - ví dụ: late int a; a = 1;
          
   ４ー List
      - mảng phần tử, ví dụ: List<String> name = ['Một', 'Hai', 'Ba'];
      - index bắt đầu từ 0 ~
      - cách lấy giá trị: name[0]
      
   ５ー Map
      - ví dụ: Map<String, String> obj = {'key_1': 'value_1', 'key_2': 'value_2'};
      - cách lấy giá trị: name['key_1']
      
   ６ー const
      - dùng khai báo hằng số
      - phải được gán giá trị tại thời điểm khai báo và giá trị này phải là một hằng số biết trước khi chạy
      - ví dụ: const int TIME = 1;
      
   ７ー final
      - dùng khai báo hằng số
      - có thể được gán giá trị sau khi nó được khai báo, và giá trị có thể tính toán khi chạy
      - ví dụ: final int TIME; TIME = 1;

/* END */
