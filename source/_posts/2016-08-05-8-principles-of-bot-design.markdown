8 nguyên tắc trong thiết kế con bot trả lời tin nhắn tự động
-------------------------------

Thiết kế một UI đàm thoại mang đến nhiều hứng thú cho người thiết kế nhưng không thực sự dễ dàng
để làm được điều đó thật tốt.

Tuy nhiên những nguyên tắc thiết kế cơ bản có thể giúp ta đẩy lùi sự cường điệu khi thiết kế, và thiết kế những thứ thật sự hữu dụng mà mọi người sẽ muốn dùng hàng ngày.

Chúng ta không thiếu những bài viết về những UI đàm thoại trong tương lai, nhưng lại có quá ít các bài viết về tính thực tiễn khi thiết kế sự tương tác của các chatbot.

Có vẻ như đây chính xác là những gì mà hiện tại chúng ta đang cần. Nỗ lực ban đầu khi thực hiện các chatbot đều thất bại, chủ yếu là do các chatbot phụ thuộc quá nhiều vào xử lý ngôn ngữ tự nhiện hoặc khả năng của A.I mà vẫn chưa tồn tại. Những người khác đã nhảy vào cuộc và cố gắng bớt đi những trường hợp sử dụng không phù hợp trong mô hình mới này. 

Khi quá phấn khích với công nghệ mới này khiến hầu hết chúng ta dường như quên mất nhân tố quan trọng nhất trong lĩnh vực này đó là con người - được cho là sẽ giao tiếp với con bot.

Vậy chúng ta dự định thiết kế các bot như thế nào? Các bot có ích trong trường hợp nào? Nên thân thiện và đơn giản như Slackbot hay thông minh như Facbook M? Nên cho phép thoải mái nhập văn bản hay tạo ra các tùy chọn như IVR? Đây là những câu hỏi không khó trả lời, nhưng thực tế chúng ta vẫn đang tìm ra cách để sử dụng được phương tiện mới này và tạo lên những trải nghiệm tuyệt vời.

Những tình huống này thường kêu gọi được nhiều ý kiến mạnh mẽ, nhưng lại tổ chức kém. Khi bạn đang thực hiện 1 domain giống như các chatbot mà vẫn có rất nhiều ý tưởng được đưa ra, thì thực sự cần thiết phải tuân theo các nguyên tắc thiết kế rành mạch.

(Bài báo này được đăng lần đầu trên Inside Intercom - trang web mà chúng tôi thường xuyên chia sẻ suy nghĩ của mình về thiết kế, startup và quản lý sản phẩm).

Các nguyên tắc thiết kế là gì?
==============================
Tất cả các sản phẩm tốt đều rất chặt chẽ. Các nguyên tắc thiết kế sẽ giữ những quan điểm nay tại một nơi.
Hiểu theo nghĩa đơn giản nhất thì các nguyên tắc thiết kế là một loạt các ý kiến được tổ chức chặt chẽ mà tất cả mọi người trong nhóm đều đồng ý. Các nguyên tắc phải rõ ràng, không mơ hồ và là tôn chỉ để mọi người hướng đến. 
Nghệ thuật luôn gắn liền với các nguyên tắc thiết kế tốt. Chúng không đơn thuần là sự thật hiển nhiên, nếu vậy thì mọi người chỉ đơn giản gật đầu đồng ý, nhưng chúng cũng sẽ không giúp bạn đưa ra quyết định thực tế.

Ví dụ, "chúng tôi không làm những thiết kế quá phức tạp" là một nguyên tắc kém - Thực tế sẽ không ai tranh cãi điều ngược lại. Các nguyên tắc không thể hướng dẫn bạn đưa ra quyết định mà nó giúp bạn thực hiện quyết định của mình một cách ý nghĩa.

Ngược lại, "Chúng tôi ủng hộ sự đơn giản hơn là quyền lực" là một nguyên tắc thiết kế tuyệt vời. Ngược với nguyên tắc này cũng có thể gây ra tranh luận như "Chúng tôi tạo ra sự phức tạp vì vậy người dùng có thể thực hiện những điều tuyệt với". Những nguyên tắc cơ bản như thế này sẽ giúp bạn đưa ra các quyết định nhất quán xuyên suốt quá trình thiết kế của mình. Chúng ta hãy cùng điểm qua một vài nguyên tắc cần nhớ khi thiết kế UI đàm thoại:


1. Không nên giả lập là con người
Chơi trò bán hàng rởm với người dùng có thể làm họ cảm thấy như mình đang bị lừa, hoặc là họ không hiểu hệ thống hoạt động như thế nào. Cả hai trường hợp này đều là những trải nghiệm người dùng không tốt. Không nên sử dụng các chỉ dẫn như "đang đánh máy" hay các trì hoãn nhân tạo để làm nó có vẻ như con người hơn. Ngược lại, các thông điệp bot nên theo kiểu cách khác nhau, và được dãn nhãn rõ ràng theo cách giao tiếp không phải là con người. Điều này không ngăn cản chúng ta loại bỏ đặc tính của bot.

2. Hãy giữ cho nó thật đơn giản
Các đàm thoại bot nên gắn liền với các chủ đề cụ thể và tuân theo lộ trình đàm thoại tuyến tính, như vậy chúng ta sẽ tránh được các đường rẽ nhánh phức tạp. Không nên tạo ra các A.I chung chung. Tốt hơn là nên phô bày và giải thích những hạn chế. BASAAP. Những người thiết kế bot độc lập cũng không cần thiết phải quan tâm đến các trường hợp bị thật bại. Người dùng sẽ thấy mệt mỏi với những đoạn hội thoại phức tạp.

3. Tôn trọng phương tiện chat
Lợi thế của các ứng dụng gửi tin nhắn thông minh đó là chúng ta có thể loại bỏ rất nhiều ứng dụng và giao diện và làm giảm tính tương tác với một UI chat đơn giản. Do đó, sẽ thật là vô nghĩa khi quay lại và thả cả 1 ứng dụng vào trong một cuộc đàm thoại. Hãy giữ mọi thứ riêng biệt với ứng dụng đàm thoại. Mọi tương tác của bot là gọi và trả lời kèm theo các bình luận trong một luồng chat và người dùng sẽ phản hồi lại trong vùng trả lời. Các bot không thể thay đổi nội dung đàm thoại, chỉ con người mới có thể làm được điều đó. Đồng thời, hãy sử dụng các quy ước hơn là in ra một URL vô nghĩa trong phản hồi của bot, hiển thị ra một thẻ có định dạng đẹp cho phép xem trước các trang liên kết.

4. Tối ưu cho người dùng cuối
Các bot nên được dùng để cải thiện trải nghiệm người dùng cuối chứ không chỉ là làm cho cuộc sống của nhóm hỗ trợ khách hàng dễ chịu hơn. Người thiết kế nên tự hỏi chính mình rằng: Con người có tốt hơn cho người dùng cuối không? Nếu câu trả lời là có thì bạn không nên sử dụng bot. Bot không nên làm thay  những việc con người có thể làm tốt được, mà nên cải thiện những cái mà con người còn làm chậm. Máy móc nên làm việc, con người thì nên suy nghĩ.

5. Sử dụng một cách tiết kiệm
Các tương tác của bot nên ngắn gọn và chính xác. Không nên có một cuộc trò chuyện kéo dài qua lại với bot, điều này sẽ làm mất thời gian của cả hai bên.

6. Cung cấp đường thoát
Luôn luôn có lựa chọn dự phòng cho người dùng, cho phép họ bày tỏ ý định của mình như: "Tôi muốn đợi và nói chuyện với một con người thực sự."

7. Sử dụng cấu trúc đầu vào khi có thể

Càng có nhiều lối đi cho một cuộc trò chuyện thì khả năng kết thúc cuộc hội thoại đó càng cao. Đừng đặt người dùng vào tình thế khiến họ phải đoán xem điều gì là đúng cần phải làm. Bàn phím mềm tùy chỉnh cho phép giới hạn các vùng đầu vào và có thể lưu trữ các bộ gõ. Ví dụ, thay vì yêu cầu người dùng cuối gõ "có" hoặc "không", hãy cho họ 2 nút loại trừ lẫn nhau. Hoặc xác nhận cấu trúc văn bản như địa chỉ email trước khi gửi. Bằng cách này,..........

8. Mọi người đều thấy được điểm giống nhau
Các bot không chỉ xuất hiện với người dùng cuối mà ở phía sau bot con người cũng cần có thể ghi lại được các bối cảnh hội thoại - bot trả lời như thế nào và người dùng cuối phản hồi lại ra sao. Các thông điệp dài hoặc chung chung của bot có thể hiện thị ở trạng thái đóng trong giao diện quản trị để người quản trị có thể quản lý chúng. Trường hợp ngoại lệ là các thông điệp bot mang tính riêng tư với quản trị viên thì chỉ hiện thị trong nội bộ thôi.

Tuân theo các nguyên tắc chứ không phải là giới hạn bởi các nguyên tắc
======================================================================
Điều quan trọng cần chú ý đó là những nguyên tắc này gần như chắc chắn sẽ phát triển, do các khả năng về công nghệ mới hoặc thực tế đơn giản là một vài nguyên tắc đã bị hiểu lầm. Chúng ta nên cho phép cả hai.<a href=""></a>
Tuy nhiên việc có các nguyên tắc tập trung tại một nơi sẽ làm mọi thứ trở lên đơn giản hơn. Chúng ta đã có các quy tắc và giờ chỉ cần áp dụng chúng thật nhất quán và có phương pháp. Nếu không có các nguyên tắc, bạn chỉ cần bắn ngẫu nhiên các ý tưởng của mình vào bất kỳ đâu và hi vọng bạn sẽ có nó hoạt động như mong muốn. 