A. CÁC PLUGIN VS-CODE CẦN THIẾT CHO LẬP TRÌNH FLUTTER
-----------------------------------------------------
   １ー Dart                      : ngôn ngữ lập trình
   ２ー Flutter                   : framework
   ３ー Dart Data Class Generator : 
   ４ー Dracula Official          : 
   ５ー 
   ６ー 
   ７ー 
   ８ー 
   ９ー   


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
          
   ３ー List
      - mảng phần tử, ví dụ: List<String> name = ['Một', 'Hai', 'Ba'];
      - index bắt đầu từ 0 ~
      - cách lấy giá trị: name[0]
   ４ー Map
      - ví dụ: Map<String, String> obj = {'key_1': 'value_1', 'key_2': 'value_2'};
      - cách lấy giá trị: name['key_1']
      
   ５ー const
      - dùng khai báo hằng số
      - phải được gán giá trị tại thời điểm khai báo và giá trị này phải là một hằng số biết trước khi chạy
      - ví dụ: const int TIME = 1;
   ６ー final
      - dùng khai báo hằng số
      - có thể được gán giá trị sau khi nó được khai báo, và giá trị có thể tính toán khi chạy
      - ví dụ: final int TIME; TIME = 1;

/* END */
