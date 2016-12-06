---
layout: post
title: "Nguyên Tắc Thiết Kế Giao Diện Người Dùng (Phần 2)"
author: ngocnguyen
date: 2016-12-06 10:50
comments: true
categories:
    - "vi"
    - "trans"
tags:
    - "design"
    - "ux"
    - "ui"
cover: /images/2016/10/26/principles.jpg
description: Những nguyên tắc thiết kế giao diện người dùng
keywords: design, ux, ui, User Interface, User Interface Design, principles, nguyên tắc, thiết kế, giao diện người dùng
---

{% img center /images/2016/10/26/principles.jpg Nguyên tắc thiết kế %}

Đây là phần tiếp theo của [Nguyên Tắc Thiết Kế Giao Diện Người Dùng (Phần 1)](/2016/10/26/nguyen-tac-thiet-ke-giao-dien-nguoi-dung-phan-1/)

10. Vấn đề nhất quán
===================
Tiếp theo nguyên tắc trên, các yếu tố của màn hình không nên xuất hiện nhất quán với nhau, trừ khi chúng vận hành giống nhau. Những yếu tố có hành vi giống nhau thì nên trông giống nhau. Tuy nhiên điều này cũng quan trọng đối với thành phần khác nhau thì xuất hiện khác nhau. Khi nỗ lực để  làm cho nhất quán, các nhà thiết kế học việc thường làm mờ đi sự khác nhau quan trọng bằng cách sử dụng biện pháp trực quan giống nhau (thường là để sử dụng lại mã nguồn) trong khi  việc sử dụng các biện pháp trực quan khác nhau thì phù hợp hơn.

<!-- more -->

11. Những phân cấp trực quan mạnh hoạt động tốt nhất
===================================================
Một hệ thống phân cấp trực quan mạnh được thực hiện khi có thứ tự xem rõ ràng các yếu tố trực quan trên màn hình. Đó là khi người sử dụng xem các mặt hàng giống nhau theo thứ tự giống nhau trong mỗi lần xem. Phân cấp trực quan yếu cung cấp ít manh mối về nơi để người dùng nên nhìn vào và cuối cùng là cảm giác lộn xộn và khó hiểu. Trong môi trường đầy biến động, rất khó để duy trì một hệ thống phân cấp trực quan mạnh bởi vì trọng lượng hình ảnh là tương đối: khi tất cả mọi thứ màu đậm thì sẽ không có gì là nổi bật nữa. Nếu một yếu tố trực quan nặng đơn lẻ được thêm vào một màn hình, người thiết kế có thể cần phải thiết lập lại các trọng lượng hình ảnh của tất cả các yếu tố để đạt được hệ thống phân cấp mạnh một lần nữa. Hầu hết mọi người không chú ý đến hệ thống phân cấp trực quan nhưng nó là một trong những cách dễ nhất để củng cố (hoặc làm suy yếu) một thiết kế. 


12. Sự tổ chức thông minh làm giảm tải trọng nhận thức (Cognitive load)
=======================================================================
*“Cognitive load mô tả gánh nặng của con người về trí nhớ ngắn hạn khi phải làm các nhiệm vụ phức tạp.”*

Như John Maeda đã nói trong cuốn sách Simplicity (Sự đơn giản) của ông, sự tổ chức các yếu tố màn hình một cách thông minh có thể làm cho những thứ số nhiều xuất hiện như là số ít. Điều này giúp mọi người hiểu giao diện của bạn dễ dàng hơn và nhanh hơn, bởi vì bạn đã mô tả các mối quan hệ vốn có của nội dung trong thiết kế của bạn. Nhóm tập hợp lại với nhau như là các yếu tố, thể hiện mối quan hệ tự nhiên qua vị trí và sự định hướng. Bằng việc tổ chức một cách thông minh, bạn sẽ làm cho nội dung ít tải trọng nhận thức (Cognitive load) hơn đối với người sử dụng... những người mà không phải suy nghĩ về việc các yếu tố có liên quan như thế nào bởi vì bạn đã làm điều đó cho họ. Đừng buộc người sử dụng phải tìm những điều này... mà hãy cho họ thấy bằng cách thiết kế những mối quan hệ đó trong màn hình của bạn. 


13. Đừng xác định mà hãy làm nổi bật với màu sắc
===============================================
Màu sắc của những vật thể thay đổi bởi vì ánh sáng thay đổi. Chúng ta sẽ thấy một cái cây được phác thảo vào ban ngày khác với lúc hoàng hôn. Như trong thế giới tự nhiên, nơi mà màu sắc là một thứ có rất nhiều sắc thái, màu sắc không nên xác định nhiều trong một giao diện. Nó có thể hỗ trợ, được sử dụng để làm nổi bật, được sử dụng để hướng dẫn sự chú ý, nhưng không nên  là sự khác biệt duy nhất của sự vật. Đối với trường hợp phải đọc lâu hoặc nhiều giờ sử dụng màn hình mở rộng, hãy sử dụng màu sắc nhẹ nhàng hoặc làm tối màu nền, giữ màu sắc tươi sáng hơn cho màu nhấn của bạn. Tất nhiên cũng cần có thời gian cho màu nền sôi động nữa, chỉ cần chắc chắn rằng nó phù hợp với khán giả của bạn. 


14. Sự tiết lộ dần dần
======================
Chỉ hiển thị những gì cần thiết trên mỗi màn hình. Nếu mọi người đang thực hiện một lựa chọn, hãy hiển thị đầy đủ thông tin để cho phép họ lựa chọn, sau đó đi vào chi tiết trên màn hình tiếp theo. Tránh việc giải thích quá mức hoặc hiển thị tất cả cùng một lúc. Khi có thể, hãy hoãn các quyết định lại ở màn hình tiếp theo bằng việc tiết lộ thông tin khi cần thiết. Điều này sẽ giữ cho những tương tác của bạn trở nên rõ ràng hơn. 


15. Trợ giúp tức thời
=====================
Trong các giao diện lý tưởng, việc trợ giúp là không cần thiết vì giao diện có thể nắm bắt và sử dụng được. Bước dưới đây, thực tế, là một bước mà trong đó sự trợ giúp là trực tiếp và theo ngữ cảnh, chỉ có sẵn vào thời gian và địa điểm cần thiết, được giấu đi ở tất cả các thời điểm khác. Việc yêu cầu mọi người đến giúp đỡ và tìm câu trả lời cho câu hỏi của họ đặt ra cho họ nhiệm vụ phải biết những gì họ cần. Thay vì xây dựng ở nơi cần trợ giúp... chỉ cần đảm bảo rằng nó không còn liên quan đến những người đã biết làm thế nào để sử dụng giao diện của bạn. 


16. Một điểm rất quan trọng: trạng thái số không
================================================
Trải nghiệm đầu tiên với một giao diện vô cùng quan trọng, nhưng các nhà thiết kế lại thường bỏ qua điều này. Để giúp người dùng của chúng ta tốt nhất trong việc đạt được tốc độ với thiết kế của chúng ta, thì thiết kế ở trạng thái số không là tốt nhất, trạng thái mà tại đó chưa có gì xảy ra. Trạng thái này không phải là một khung trống... Nó sẽ đưa ra những chỉ đạo và hướng dẫn để đạt được tốc độ. Phần lớn sự cọ sát của các tương tác là trong bối cảnh ban đầu... Một khi người ta hiểu các quy tắc mà họ có thì khả năng thành công sẽ cao hơn nhiều. 


17. Thiết kế lớn là vô hình
===========================
Một tính chất kỳ lạ của thiết kế lớn là nó thường không được chú ý bởi những người sử dụng nó. Lý do cho điều này là nếu thiết kế thành công người sử dụng có thể tập trung vào những mục tiêu của riêng mình chứ không phải là giao diện... khi họ hoàn thành mục tiêu của họ, họ sẽ hài lòng và không cần phải suy nghĩ về tình hình. Là một nhà thiết kế, điều này có thể là khó khăn bởi vì chúng ta nhận được ít lời tán thưởng khi các thiết kế của chúng ta tốt. Nhưng các nhà thiết kế lớn thường hài lòng với thiết kế được sử dụng tốt... và biết rằng người sử dụng hài lòng thường im lặng. 


18. Xây dựng trên những lĩnh vực thiết kế khác
=============================================
Thiết kế đồ họa hình ảnh, kiểu chữ (typography), copywriting, kiến ​​trúc thông tin và sự hiển thị... tất cả những lĩnh vực này là một phần của thiết kế giao diện. Chúng có thể được đề cập đến hoặc được chuyên môn môn hoá. Không nên lún vào những cuộc nội chiến hoặc coi thường những lĩnh vực khác: hãy thu thập những điều hữu ích từ những lĩnh vực khác cho công việc của bạn và tiếp tục sử dụng chúng. Ghi nhớ cả những hiểu biết từ những lĩnh vực dường như không liên quan... những gì chúng ta có thể học được từ việc xuất bản, viết mã, đóng sách, trượt ván, chữa cháy, karate? 


19. Những giao diện tồn tại để được sử dụng
===========================================
Như trong hầu hết các lĩnh vực thiết kế, thiết kế giao diện thành công khi mọi người đang sử dụng những gì bạn đã thiết kế. Giống như một chiếc ghế xinh đẹp mà không thoải mái để ngồi vào thì thiết kế là thất bại khi mọi người không lựa chọn sử dụng nó. Do đó, thiết kế giao diện có thể được xem như là tạo ra một môi trường sử dụng giống như tạo ra một vật có giá trị sử dụng. Giao diện để thoả mãn cái tôi người thiết kế là chưa đủ: nó phải được sử dụng!


(HẾT!)

Bài dịch từ [Principles of User Interface Design](http://bokardo.com/principles-of-user-interface-design/)