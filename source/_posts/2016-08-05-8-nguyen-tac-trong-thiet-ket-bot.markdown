---
layout: post
title: "8 nguyên tắc trong thiết kế bot"
author: hoavu
date: 2016-08-05 09:40
comments: true
categories:
    - "vi"
    - "trans"
tags:
    - "bot"
    - "design"
cover: /images/2016/08/05/bot-design.png
description: 8 nguyên tắc trong thiết kế bot
keywords: bot, design, UI, giao diện người dùng, thiết kế
published: true
---

{% img center /images/2016/08/05/bot-design.png Bot Design %}

Thiết kế UI đàm thoại[^1] thu hút được nhiều sự quan tâm nhưng để chúng phát huy được hiệu quả trong thực tế thì vẫn là một vấn đề chưa rõ ràng.

Tuy nhiên những nguyên tắc thiết kế cơ bản có định hướng có thể giúp chúng ta thiết kế những thứ thật sự hữu dụng mà mọi người sẽ muốn dùng hàng ngày.

Chúng ta không thiếu những bài viết về những UI đàm thoại trong tương lai, nhưng lại có quá ít các bài viết về tính thực tiễn khi thiết kế sự tương tác của các chatbot.

Có vẻ như đây chính xác là những gì mà hiện tại chúng ta đang cần. Nỗ lực ban đầu khi thực hiện các chatbot đều thất bại, chủ yếu là do các chatbot phụ thuộc quá nhiều vào việc xử lý ngôn ngữ tự nhiên hoặc khả năng của A.I mà vẫn chưa làm
được. Ngoài ra người ta cũng cố gắng loại bỏ những thứ không phù hợp trong mô hình mới này. 

Vì quá quan tâm đến công nghệ mới mà chúng ta quên đi nhân tố quan trọng nhất trong lĩnh vực này đó là con người - được cho là sẽ giao tiếp với bot.

<!-- more -->

Vậy chúng ta dự định thiết kế các bot như thế nào? Các bot có ích trong trường hợp nào? Nên thân thiện và đơn giản như Slackbot hay thông minh như Facbook M? Nên cho phép thoải mái nhập văn bản hay tạo ra các tùy chọn như IVR[^2]? Đây là những câu hỏi không khó trả lời, nhưng thực tế chúng ta vẫn đang khám phá cách sử dụng phương tiện mới này để tạo ra những trải nghiệm thật tốt.

Những tình huống này đòi hỏi các quan điểm thống nhất. Khi bạn làm việc trong lĩnh vực chatbot với nhiều quan điểm khác nhau thì bạn cần phải tuân theo các nguyên tắc thiết kế thật rõ ràng.

(Bài viết này được đăng lần đầu trên Inside Intercom - trang web mà chúng tôi thường xuyên chia sẻ suy nghĩ của mình về thiết kế, startup và quản lý sản phẩm).

Các nguyên tắc thiết kế là gì?
==============================
Tất cả các sản phẩm tốt đều tuân theo các nguyên tắc có quan điểm rõ ràng và các nguyên tắc đó phải được đặt lên hàng đầu.

Hiểu theo nghĩa đơn giản nhất thì các nguyên tắc thiết kế là tập hợp các quan điểm được cả nhóm ủng hộ. Các nguyên tắc phải rõ ràng, không mơ hồ và là tôn chỉ để mọi người hướng đến. 

Tạo ra các nguyên tắc thiết kế hay là cả một nghệ thuật. Nó không đơn thuần chỉ là những chân lý. Vì nếu như vậy, mọi người sẽ chỉ biết gật đầu, và chẳng giúp bạn được gì khi triển khai thực hiện.

Ví dụ, "chúng tôi không làm những thiết kế quá phức tạp" là một nguyên tắc chán kinh khủng - Thực tế sẽ không ai tranh cãi điều ngược lại. Những chân lý như vậy không thể giúp định hướng khả thi cho các quyết định của bạn.

Ngược lại, "Chúng tôi thích sự đơn giản hơn là việc gì cũng muốn làm" là một nguyên tắc thiết kế tuyệt vời. Chúng ta cũng có thể đưa ra một lập luận ngược với nguyên tắc trên đó là "Chúng tôi bổ sung tính phức tạp để người dùng có thể tạo ra những thứ tuyệt vời hơn". Những nguyên tắc có quan điểm rõ ràng như vậy sẽ giúp bạn có được những quyết định thống nhất khi thiết kế.
Với định hướng như vậy, hãy cùng đưa ra một số nguyên tắc giúp chúng ta tiến bộ khi thiết kế các UI đàm thoại.

Các nguyên tắc thiết kế bot
===========================
1. Không nên giả lập là con người
---------------------------------
Trò mồi chài người dùng có thể làm họ cảm thấy như mình đang bị lừa, hoặc là họ không hiểu hệ thống hoạt động như thế nào. Cả hai trường hợp này đều là những trải nghiệm người dùng không tốt. Điều đó có nghĩa là chúng ta không nên sử dụng các chỉ dẫn như "đang đánh máy" hay các trì hoãn giả tạo để có vẻ khiến cho bot mang nhân cách nhiều hơn. Thay vì đó, các thông điệp bot nên theo các kiểu cách khác nhau, và được dán nhãn rõ ràng để thể hiện rằng nó không phải là con người. Điều này cũng sẽ không ngăn cản chúng ta tạo ra cá tính cho bot.

2. Đơn giản hóa hết mức có thể
------------------------------
Các đàm thoại bot nên gắn với các chủ đề cụ thể và theo lộ trình đàm thoại tuyến tính, như vậy sẽ tránh được các đường rẽ nhánh phức tạp. Không nên tạo ra các A.I tự cảm nhận và chung chung. Tốt hơn là nên trình bày và giải thích những giới hạn của bot. Như vậy, các nhà thiết kế bot cũng sẽ không phải giải thích gì cho các trường hợp bị lỗi lừa bot và người dùng cũng sẽ không cảm thấy mệt mỏi với các thông điệp đàm thoại phức tạp.

3. Tôn trọng phương tiện chat
-----------------------------
Lợi thế của các ứng dụng gửi tin nhắn thông minh đó là có thể loại bỏ rất nhiều ứng dụng, giao diện và làm giảm tính tương tác, thay vào đó là một UI chat đơn giản. Do đó, sẽ thật là vô nghĩa khi loanh quanh và vứt cả 1 ứng dụng vào trong một cuộc đàm thoại. Hãy giữ mọi thứ thật tự nhiên với ứng dụng đàm thoại. Mọi tương tác của bot là gọi và trả lời kèm theo các bình luận trong một luồng chat và người dùng sẽ phản hồi lại trong vùng trả lời. Các bot không thể thay đổi nội dung đàm thoại như con người. Cùng với đó, hãy sử dụng các quy ước: hiển thị một tấm thẻ được định dạng bắt mắt cho phép xem trước trang liên kết hơn là việc in ra một URL vô nghĩa trong phản hồi của bot.

4. Tối ưu cho người dùng cuối
-----------------------------
Các bot nên được dùng để cải thiện trải nghiệm người dùng cuối chứ không chỉ là công cụ hỗ trợ tốt cho các đội chăm sóc khách hàng. Người thiết kế nên tự hỏi rằng: Con người có tốt hơn cho người dùng cuối không? Nếu câu trả lời là có thì bạn không nên sử dụng bot. Bot không nên làm thay những việc con người có thể làm tốt hơn, mà nên cải thiện những cái mà con người còn làm chậm chạp. Máy móc nên làm việc, con người thì nên suy nghĩ.

5. Sử dụng một cách tiết kiệm
------------------------------
Các tương tác của bot nên ngắn gọn và chính xác. Không nên có một cuộc trò chuyện kéo dài qua lại với bot, điều này sẽ làm mất thời gian của cả hai bên. Bất cứ khi nào cần quá 2 lần nhập là thấy nặng nề rồi.

6. Cung cấp đường thoát
-----------------------
Luôn luôn có lựa chọn dự phòng cho người dùng, cho phép họ bày tỏ ý định của mình như: "Tôi muốn đợi và nói chuyện với một con người thực sự. Tôi không muốn tiếp tục nói chuyện với robot nữa."

7. Sử dụng đầu vào có cấu trúc khi có thể
--------------------------------------
Một cuộc đàm thoại mà càng có nhiều hướng đi khác nhau thì nguy cơ đi vào ngõ cụt càng lớn. Đừng đặt người dùng vào tình thế khiến họ phải đoán xem điều gì là đúng cần phải làm. Bàn phím mềm cho phép nhập một lượng ký tự nhất định và có thể tránh phải đánh máy nhiều. Ví dụ, thay vì yêu cầu người dùng cuối gõ các từ "có" hoặc "không", hãy cho họ 2 nút tùy chọn. Hoặc xác nhận đầu vào có cấu trúc như địa chỉ email trước khi gửi. Bằng cách này, bạn có thể đưa ra được các phản hồi đúng mục đích và tránh phải xử lý các văn bản phức tạp mà đầu vào không đoán trước được.

8. Mọi người đều thấy được điểm giống nhau
------------------------------------------
Các bot không chỉ xuất hiện với người dùng cuối mà người thiết kế bot cũng cần phải ghi lại được các bối cảnh hội thoại - bot trả lời như thế nào và người dùng cuối phản hồi lại ra sao. Các thông điệp dài hoặc phổ biến của bot có thể hiện thị ở trạng thái đóng để quản trị viên quản lý dễ dàng hơn. Trường hợp ngoại lệ là các thông điệp bot mang tính riêng tư với quản trị viên thì cần hiển thị luôn.

Tuân thủ nhưng không bị giới hạn bởi các nguyên tắc
===================================================
Điều quan trọng cần chú ý đó là những nguyên tắc trên chắc chắn sẽ luôn được phát triển, do khả năng mới về mặt công nghệ hoặc đơn giản là một số nguyên tắc hướng dẫn chưa đúng. Chúng ta nên chấp nhận cả hai thực tế trên.
Tuy nhiên việc nắm bắt được các nguyên tắc trên sẽ làm cho mọi thứ trở lên dễ dàng hơn. Chúng ta đã có các nguyên tắc và giờ chỉ cần áp dụng chúng một cách có hệ thống và đồng nhất. Nếu không có các nguyên tắc này, bạn chỉ có thể thực hiện các ý tưởng của mình một cách ngẫu nhiên và hi vọng nó sẽ hiệu quả như mong muốn.


Bài dịch từ [8 principles of bot design](https://medium.com/intercom-inside/8-principles-of-bot-design-51f03df1d84c#.hb10iooyq)

[^1]: conversational UI (user interface)
[^2]: IVR (Interactive Voice Response) - tổng đài trả lời tự động