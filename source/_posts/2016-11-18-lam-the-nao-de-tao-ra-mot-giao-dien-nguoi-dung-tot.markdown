---
layout: post
title: "Làm thế nào để tạo ra một giao diện người dùng tốt"
author: 
date: 2016-11-18 08:25
comments: true
categories:
    - "vi"
    - "trans"
tags:
    - "organization"
    - "management"
    - "document"
cover: /images/2016/11/18/3.coach.jpg
description: Tạo ra những giao diện được dễ dàng hiểu bởi con người, đặt chúng ta, những nhà thiết kế sản phẩm chiến thắng được 1 sự thật phũ phàng rằng máy tính là lười biếng, máy tính chúng không cần quan tâm về việc giúp mọi người hiểu cái gì mới, cái gì cần làm tiếp theo hay là phản ứng thế nào khi có gì đó bị lỗi.
keywords: UI, UI Stack
published: true
---

{% img center /images/2016/11/18/3.coach.jpg %}

Bạn có bao giờ trải nghiệm qua 1 giao diện người dùng (UI) có vẻ không có sức sống chưa? Bạn có bao giờ tạo ra 1 giao diện người dùng mà nó dường như thiếu 1 thứ gì đó?

Nếu là có, thì bạn đã được trải nghiệm 1 trường hợp của giao diện người dùng lủng củng (Awkward UI).


UI lủng củng là sự thiếu hụt về dấu hiệu đang tải trang, nó không cho khách hàng của bạn thấy 1 cái gì đó nó có sai sót ở đâu, lại còn thêm vào đó 1 thông điệp báo lỗi đáng sợ nào đó. Nó là biểu đồ nhìn khá là lạ với chỉ 1 vài điểm dữ liệu.


<!-- more -->
*
**(Đây là 1 bản thu gọn trong cuốn sách *[Designing Products People Love](http://scotthurff.com/book), được xuất bản bởi *O'Reilly  vào tháng 1 năm 2016. Hãy vào xem nó cùng với hơn 20 nhà thiết kế sản phẩm ở Facebook, Twitter, Slack, … mà đã được phỏng vấn về việc cuốn sách này nó như thế nào.)*


Hãy xem xét 1 ví dụ thực thế sau để thấy rõ hơn về 1 UI lủng củng: Tôi sử dụng Apple TV rất nhiều, bất cứ khi nào tôi mở danh sách phim đã mua lên, tôi thấy màn hình như sau:

{% img center /images/2016/11/18/image_0.jpg %}

Trong 1 khoảng khắc tôi cảm thấy sợ hãi, lần nào cũng vậy, trong khi tôi thường xuyên sử dụng nó, tại sao tôi lại sợ vậy? Vì tôi không thấy bất kì 1 dấu hiệu đang tải trang nào cả, không có biểu hiện của sự hoạt động nào, cho nên tôi cảm thấy sợ hãi và các câu hỏi xuất hiện liên tục trong đầu: Phim của tôi đâu? Mất rồi? Bị xoá? Bị lỗi?

Sau đó 1 hồi thì phim của tôi bất chợt xuất hiện.

Ngược lại với việc chạy 1 bộ phim, sau khi ấn nút "chạy" trên cái điều khiển, tôi thấy 1 dấu hiệu đẹp cho thấy rằng bộ phim đó đang sẵn sàng để chạy:

{% img center /images/2016/11/18/image_1.jpg %}


Bạn thấy sự khác biệt trong trải nghiệm chứ?

Tạo ra những giao diện được dễ dàng hiểu bởi con người, đặt chúng ta, những nhà thiết kế sản phẩm chiến thắng được 1 sự thật phũ phàng rằng máy tính là lười biếng, máy tính chúng không cần quan tâm về việc giúp mọi người hiểu cái gì mới, cái gì cần làm tiếp theo hay là phản ứng thế nào khi có gì đó bị lỗi.

Trong thế giới của máy tính, mọi chuyện chúng cần làm là đưa ra các câu lệnh lỗi và âm thanh cảnh báo khi có gì đó không mong đợi xảy ra, hay nói 1 cách khác, chúng chỉ nói với bạn qua ngôn ngữ nhị phân. 

Nhưng chúng ta không nói tiếng nhị phân. Chúng ta suy nghĩ theo dòng chảy, chúng ta sống trong thế giới của vật lý, khi cánh của mở ra, nó sẽ dang ra theo hình quạt, khi cái gì đó du hành, bạn có thể thấy nó di chuyển, khi cái gì đó rơi, bạn sẽ thấy nó nảy.

UI lủng củng là khi người thiết kế sản phẩm không đưa những điều này vào việc cần phải ghi nhớ, có nghĩa là có 1 số luật lệ nào đó bị phá vỡ.

Và là những luật lệ nào?

Đó là những luật lệ của giao diện người dùng ngăn xếp (UI Stack). Hãy tìm hiểu về nó ngay bay giờ.

## 
Giao diện người dùng ngăn xếp (UI Stack)

{% img center /images/2016/11/18/image_2.jpg %}

Đối với mỗi màn hình mà bạn tiếp xúc với ở 1 sản phẩm kĩ thuật số, chúng có nhiều tính cách.

Chính xác là 5 cái.

Tuỳ vào ngữ cảnh, các tính cách này sẽ hiện ra cho khách hàng của bạn. Theo cách nói của người thiết kế, chúng tôi gọi chúng là các trạng thái (state).

Làm theo các luật của UI Stack và 5 trạng thái sẽ giúp bạn tạo ra 1 giao diện có tính kết hợp, tha thứ, hữu ích và nhân văn.

Hãy nói thật với bản thân, khi nào là lần cuối bạn tạo ra 1 màn hình mà chỉ có đúng 1 trạng thái? Cho dù bạn có tạo các ứng dụng thời tiết thì 1 trạng thái sẽ không thể thể hiện được. 

Thự thế cho thấy là thế giới không hoàn hảo, và cái gì cũng có thể xảy ra. Máy chủ cần thời gian để trả lời, và khách hàng của bạn không phải lúc nào cũng sử dụng sản phẩm của bạn theo cái cách mà bạn muốn.

Cho nên với tư cách là 1 người thiết kế sản phẩm, bạn phải xem xét những sự thực này.

Đó là lý do tại sao, đối với mỗi màn hình mà bạn định thiết kế có thể có tới 5 trạng thái:

* [Ideal State (Trạng thái lý tưởng)](#trang-thai-ly-tuong)

* [Empty State (Trạng thái trống)](#trang-thai-trong)

* [Error State (Trạng thái lỗi)](#trang-thai-loi)

* [Partial State (Trạng thái thành phần)](#trang-thai-thanh-phan)

* [Loading State (Trạng thái tải)](#trang-thai-tai)

Khi khách hàng di chuyển theo dòng chảy sản phẩm, họ cũng sẽ di chuyển mượt mà giữa các trạng thái trong dòng chảy này.

{% img center /images/2016/11/18/image_3.jpg %}


Một ứng dụng nhắn tin sử dụng UI Stack. Mỗi màn hình chuyển đổi mượt mà với nhau.

Bạn có thể tới ngay với ví dụ sử dụng UI Stack nếu bạn muốn: [Ví dụ giả định](#vi-du-gia-dinh)

Hãy tới với 1 bài ôn tập ngắn về lịch sử internet nhé, vào năm 2004, Basecamp, 1 công ty trước đây được biết đến với tên 37signals, đã viết ra 1 bài viết đột phá (đối với tôi) với cái tên "[The Three State Solution](https://gettingreal.37signals.com/ch09_Three_State_Solution.php) (Giải pháp cho ba trạng thái).", có chỉ ra rằng với mỗi màn hình nên cân nhắc có 3 trạng thái: "bình thường, trống và lỗi", và nó đã làm tôi thay đổi suy nghĩ về thiết kế web mãi mãi.

Nhưng mọi thứ của internet đều thay đổi. Đầu tiên là về cuộc cách mạng  AJAX, sau đó là các ứng dụng điện thoại, thứ 3 là xu hướng sử dụng công nghệ, yêu cầu và mong muốn về giao diện người dùng thay đổi.

Với những điều trên, hãy nói về trạng thái đầu tiên. Trạng thái lý tưởng.

### **Trạng thái lý tưởng**

Đây là trạng thái đầu tiên mà tôi tạo ra, vì nó là cái mà mọi người thường thấy nhất. Như tên, nó là hiện thân cao nhất về tiềm năng sản phẩm của bạn - khi sản phẩm của bạn đang cung cấp tối đa giá trị và cực kì hữu dụng, nội dung có thể áp dụng. Nó sẽ là nền tảng cho các trạng thái khác. Hãy nghĩ nó như là tinh hoa, thứ đẹp nhất của 1 tờ quảng cáo hay là hình chụp ứng dụng  trên cửa hàng ứng dụng điện thoại.

Hãy để trạng thái này cài đặt nhịp độ cho các trạng thái khác, bởi vì khi bạn lặp lại giao diện cốt lõi, thì giao diện này có thể thay đổi hoàn toàn theo thời gian, đó là 2 mặt đẹp và nguy hiểm của sự lặp lại này.

Và nó sẽ để lại hậu quả to lớn cho tất cả các trạng thái khác.

Tất cả các trạng thái của giao diện người dùng đều dẫn tới trạng thái lý tưởng, vì thế hãy bắt đầu với nó trước, và cho các trạng thái khác đi vào chỗ của nó cùng với thiết kế của bạn càng gần hơn với việc giải quyết vấn đề của khác hàng.

Hãy xem 1 vài ví dụ sau đây để làm rõ hơn nếu bạn vẫn chưa hiểu rõ về ý của tôi khi nói về trạng thái lý tưởng.

 
{% img center /images/2016/11/18/1.skype.jpg Nhìn đẹp đúng không, cũng như dữ liệu, rất nhiều hình ảnh. %}


{% img center /images/2016/11/18/2.tinder.jpg Tinder là ứng dụng có các trạng thái lý tưởng tốt nhất trên thị trường. %}


### **Trạng thái trống**
 

Trạng thái trống thật ra không chỉ giới hạn ở 1 màn hình. Nó cung cấp cho người dùng 1 ấn tượng đầu tiên khi bạn giới thiệu họ cho sản phẩm của bạn - để kích thích họ hành động, khiến họ thấy hứng thú, và cho họ nhớ về giá trị của sản phẩm mang lại.

Có 3 phiên bản lớn của trạng thái trống, đầu tiên là cái được nhìn thấy bởi khách hàng lần đầu tiên sử dụng, thứ 2 là cái được nhìn thấy bởi khách hàng khi họ xoá các dữ liệu ban đầu khỏi màn hình, thứ 3 là cái mà sẽ xảy ra khi không có gì để hiện ra cả, ví dụ như kết quả tìm kiếm.

Nói chung thì cái rủi ro của các trạng thái trống là nó dễ dàng khiến khách hàng có suy nghĩ khác sau đó, thường là tạo ra 1 trải nghiệm áp đảo hoặc là 1 sự lạnh lẽo, không phù hợp.

{% img center /images/2016/11/18/3.coach.jpg George Takei sẽ nói: "Oh, my…" %}


Các dấu hiệu chỉ dẫn - hay các màn ảnh hướng dẫn, theo ý kiến của tôi là các ví dụ tốt nhất của suy nghĩ tiêu cực khi trải nghiệm đầu tiên, họ đưa gánh nặng của việc học sử dụng cho khách hàng bao gồm nhiều giao diện hơn, nhiều ghi nhớ hơn, tất đã được làm cùng với sự gián đoạn khá lớn về tinh thần, điều này thật là chán.

Hãy tìm hiểu sâu hơn về trạng thái lần đầu sử dụng dưới đây.

#### **Lần đầu sử dụng / nhập môn**

 

Nếu 1 người khách hàng lần đầu sử dụng sản phẩm của bạn, trạng thái này sẽ trực tiếp mô tả cho khách hàng của bạn thấy là khi có dữ liệu thì nó sẽ trông như thế nào. Đây là cơ hội để bạn khuyến khích hành động, giúp họ hiểu về giá trị mà họ sẽ có được ở màn hình này, ấn tượng đầu tiên chỉ xảy ra 1 lần duy nhất, và đó là cơ hội của bạn để tạo ra cái tốt nhất.

Tôi đồng hoá trạng thái này 1 phần với cái gọi là "Hero’s Journey (Hành trình anh hùng)" trong cuốn truyện “*[Hero With a Thousand Face*s](http://amzn.to/1C6SgTo)” của Joseph Campbell, nó là nền tảng của các bộ truyện thần thoại trong các thế giới từ *The Odyssey* tới *Star Wars*, sau đây là *giả thuyết căn bản:*

{% img center /images/2016/11/18/image_4.jpg %}

"Một anh hùng du ngoạn từ một thế giới bình thường tới 1 khu vực của những điều siêu nhiên: đụng độ với các thế lực thần thánh và đã chiến thắng: người anh hùng trở về từ cuộc phiêu lưu thần kì này với sức mạnh có thể ban cho những người bạn của anh ta những thứ hữu ích."

Hãy cho khách hàng của bạn làm cái hành trình anh hùng này với Trạng Thái Trống, cho họ phiêu lưu, dắt họ qua các chướng ngại và các sự lôi cuốn và biến đổi họ thành những người mạnh mẽ hơn.

Những làm thế nào? có 1 vài ý tưởng như sau:

* Dắt ngựa qua suối. Hãy khích lệ và nâng cao tinh thần thông qua các bài viết, và nói về những thứ cần làm. Ví dụ, nói 1 câu giống như "Ở đây không có gì đâu" thì thật sự là không có gì cho khách hàng của bạn để mà mong chờ đâu, và nó sẽ hơi chán nản vì đó là thứ đầu tiên bạn thấy. Thay vào đó, hay cho khách hàng biết chính xác là cần bấm nút nào, và tại sao phải bấm nó, điều này sẽ giúp ích hơn rất nhiều.

* Sử dụng nội dung sản phẩm để hướng dẫn khách hàng về việc làm cái gì. Ví dụ, nếu bạn đang xây dựng một ứng dụng gửi tin nhắn, thì trải nghiệm lần đầu tiên sẽ là 1 thông điệp nào đó được tự động gửi tới người dùng. Tiêu đề có thể nói là "ấn vô để mở" và nội dung là các tin nhắn hội thoại về việc làm sao để tuỳ chỉnh và trả lời 1 tin nhắn. 

* Tạo 1 ảnh chụp ví dụ về màn hình sẽ trông như thế nào ở trạng thái lý tưởng. Nó sẽ tạo ra 1 cái hi vọng cho khách hàng rằng họ sẽ có thể làm được giống thế và cùng lúc cho họ thấy tiềm năng và hữu ích của sản phẩm này là như thế nào.

* Quan sát tiến tình của khách hàng và trả lời 1 cách hợp lý. Nếu họ dừng lại quá lâu trên 1 trang nào đó, bạn có thể gửi tin cho họ hỏi nếu họ có cần giúp đỡ gì không.

Sau đây là 1 vài trạng thái trống lần đầu sử dụng mà tôi thích.

{% img center /images/2016/11/18/image_5.jpg Hipchat cho bạn biết cần phải làm gì trong khi thêm 1 vài câu hài hước, các tính năng ẩn khác. %}


{% img center /images/2016/11/18/image_6.jpg Facebook Paper dần dần giới thiệu cho bạn các tính năng của nó trong lúc dạy bạn các thao tác chủ chốt. %}

{% img center /images/2016/11/18/image_7.jpg Basecamp không có nội dung nào cho bạn xem nhưng thay vào không có gì, nó cho vào các nội dung ảo để bạn có thể hình dung tiềm năng sản phẩm của nó. Tôi có thể thấy màn hình này có năng suất không tưởng. %}


{% img center /images/2016/11/18/image_8.jpg Ấn vào Wish List trong ứng dụng Airbnb lần đầu sẽ cho bạn trạng thái trống đơn giản đẹp đẽ này. Điều tôi thích ở cái thiết kế này là nó không cố quá và nó có lời kêu gọi hành động rõ ràng để cho bạn bắt đầu thu thập dữ liệu. %}



Bộ môn nhập môn và các trạng thái sử dụng lần đầu là 1 chủ để đủ lớn cho 1 cuốn sách. Và nó cũng tình cờ có 1 cái, nếu bạn muốn đọc thì tôi khuyến khích cuốn *[The Elements of User Onboardin*g](https://www.useronboard.com/training/) của Samuel Hulick.

#### **Người dùng xoá dữ liệu**

 Loại thứ 2 trong trạng thái trống là trường hợp khi người dùng chủ động xoá dữ liệu khỏi màn hình. Ví dụ như là khi người dùng hoàn thành hết tất cả các công việc trong danh sách các công việc cần làm, đọc tất cả các thông báo, thu hồi tất cả email hay hoàn thành tải tất cả các bài nhạc.

Các loại trạng thái trống là cơ hội lớn để thưởng cho khách hàng của bạn hay là kích thích hành động sâu hơn của họ. Ví dụ:
  Thu hồi email, hãy nói "Không có tin mới?" Tuyệt vời! Hãy xem hình này nhé
  Đã tải hết nhạc? nói “Tốt, giờ hãy nghe nó nào".
  Xem hết các thông báo rồi? nói “Dưới đây là 1 cái khác có thể bạn muốn đọc”.
  …

Khách hàng mà có xoá, làm sạch dữ liệu là người mà có tương tác với sản phẩm của bạn, hãy giữ họ trong dòng chảy của sản phẩm bằng cách làm các tác vụ cho họ, đừng để trách nhiệm làm bước tiếp theo cho khách hàng.

{% img center /images/2016/11/18/image_9.jpg Hình minh hoạ khi hộp tin nhắn rỗng trên iOS6. %}

#### **Không có kết quả nào**

Trong nhiều trường hợp khi khách hàng đang lướt hay tìm kiếm 1 mẩu thông tin nào đó trong sản phẩm của bạn, sẽ có trường hợp họ không tìm thấy gì, cái ngữ cảnh này là những cơ hội tuyệt vời để suy luận về việc khách hàng của bạn có ý định tìm cái gì để có thể đưa ra những gợi ý thông minh.

Cách làm của Amazon là các ví dụ tốt nhất tôi từng thấy trong kĩ thuật này. Tính toán chính tả và các tìm kiếm tương tự, trình tìm kiếm của Amazon rất hiếm khi không cho bạn kết quả nào. Thay vào đó, họ sẽ cho bạn kết quả gần nhất cùng với sửa các từ ngữ không hợp.

{% img center /images/2016/11/18/image_10.jpg Ví dụ cho thấy tôi yêu thích dòng nhạc metal, có lẽ vậy. %}

Đối với Pinterest, thì không giống với Amazon cho lắm, nhưng nó là Pinterest. Dựa vào việc trình tìm kiếm của họ xử lý câu lệnh của tôi như nào, thì nó sẽ dễ dàng cho khách hàng có thể hiệu chỉnh từ ngữ tìm kiếm để lấy được những thứ họ muốn.

{% img center /images/2016/11/18/image_11.jpg %}

Bài học là: ở trạng thái này đừng không cho khách hàng cái gì cả, cho họ thứ gì đó chấp nhận được và gợi ý con đường thay thế.

### **Trạng thái lỗi**

 

Hiển thị khi bị lỗi. Thường thì không phải nó đơn giản là chỉ 1 màn hình, vì lỗi có thể xảy ra với các sự kết hợp bất ngờ, những trạng thái lỗi có thể bao gồm bất kì cái gì từ thiếu hoặc sai dữ liệu của 1 form, không thể kết nối với máy chủ, qua bước tiếp theo khi chưa hoàn thành việc tải lên, thoát khỏi trang khi chưa gửi tin nhắn, …

Các trạng thái lỗi nên dễ dàng trong vấn đề giữ cho các nhập liệu của người dùng an toàn. Sản phẩm không nên hoàn tác, tiêu huỷ, hay xoá bỏ bất kì cái gì đã được nhập vào hay tải lên trong khi đang lỗi.

Jef Raskin, người sáng chế của hệ điều hành Macinosh và tác giả của *[The Humane Interfac*e](http://amzn.to/1IVBiqD)  đã viết: "hệ thống nên coi tất cả các dữ liệu nhập vào của người dùng là linh thiêng - để giải thích luật đầu tiên của Asimov về robot, ‘Một robot sẽ không làm tổn thương con người, mặc dù có không làm gì thì nó vẫn có thể làm tổn thương cho con người.’. Luật đầu tiên của thiết kế giao diện nên là: Một máy tính sẽ không làm tổn hại công việc của bạn, mặc dù không làm gì, cũng sẽ có thể làm tổn hại công việc của bạn."

Lời khuyên này có thể được thấy rõ nhất với 1 vài trang vị phạm nó: trang web bán vé máy bay. Điền thiếu 1 trường thông tin nhỏ trong form ví dụ như là khoá bảo mật của thẻ tín dụng, sẽ hay dẫn tới kết quả là trang web bị tải lại, bị xoá hết các thông tin tỉ mỉ đã điền, trong khi làm nổi các trường bị thiếu với màu đỏ chướng mắt.

{% img center /images/2016/11/18/image_12.jpg %}

{% img center /images/2016/11/18/image_13.jpg %}

#### **Vậy thì nên làm thế nào?**

 
Có 1 vài thông điệp lỗi chúng ta có thể làm theo, có thể thêm 1 sự hài hước vào.

{% img center /images/2016/11/18/image_14.jpg %}

Trạng thái lỗi lý tưởng là nó hiện ra linh động mà không phá huỷ dữ liệu được nhập bởi người dùng. Nếu bắt buộc phải tải lại trang để phát hiện lỗi, hãy lưu dữ hiệu họ đã nhập dù có lỗi, và trả lại vị trí cũ của nó cho họ. Thông thường thì phải tải lại trang để phát hiện lỗi là dấu hiệu của sự lười biếng, hãy vì khách hàng của bạn, hãy chắc chắn bạn và người phát triển sản phẩm hãy đi xa hơn 1 tí và xử lý lỗi theo những cách duyên dáng và tiện lợi nhất.

Thêm nữa, trạng thái lỗi không nên quá cầu kì hoặc mơ hồ. Bạn có nhớ "BSOD: màn hình xanh chết chóc?" của Window, “Kernel Panic" của Mac, hoặc máy tính ngày xưa hay hiện ra là “Bỏ qua, Thử lại, Thất bại?". Mỗi trạng thái lỗi đó đều là lỗi hệ thống quan trọng yêu cầu máy tính khởi động hay thử lại, cho tới ngày nay, các trạng thái lỗi này đều được nhớ lại như lại kí ức sốc, sợ hãi chúng dành cho người dùng.

BSOD của Microsoft trở nên rất tai tiếng vì nó làm mọi người hoảng sợ, màu xanh mặc dù đỡ hơn màu đỏ, nhưng nó tạo ra sự xa cách, đột ngột, nhiều từ ngữ đáng sợ, mặc dù nó hữu ích để sửa vấn đề.

{% img center /images/2016/11/18/image_15.jpg %}

Đó là bởi vì trạng thái lỗi phải được phối hợp gọn gàng, thân thiện và có hướng dẫn cần làm gì tiếp theo. Các câu lệnh lỗi mơ hồ, các số lục phân và các lựa chọn nâng cao mập mờ chỉ làm cho người dùng thêm sợ hãi và khó chịu.

Tất nhiên, nếu khách hàng của bạn là các nhà khoa học tiên tiến hay là các kĩ sư máy tính, thì mấy câu lỗi chuyên ngành này sẽ rất phù hợp, nhưng với hầu hết các phần mềm được sử dụng hàng ngày trên thế giới thì những thông điệp lỗi này trở nên càng ngày càng không phù hợp.

Đơn giản thôi, hãy làm cho các câu lỗi này nhân tính hơn, không kĩ thuật, và phù hợp với người dùng. Bạn sẽ muốn được nghe  gì khi có gì đó lỗi?

Trạng thái lỗi thường hay được bắt gặp, và là trạng thái ít mong muốn nhất. Nhưng tôi xin hứa rằng nếu bạn quan tâm với nó như là với 2 trạng thái trước, thì sản phẩm của bạn sẽ chắc chắn vui vẻ để sử dụng hơn, và sẽ hữu ích hơn vì bạn đã nghĩ qua các trường hợp mà người dùng sẽ bị lỗi và đã xử lý nó rồi.

### **Trạng thái thành phần**

Sự khác biệt giữa trạng thái lỗi và trạng thái lý tưởng như đêm và ngày vậy. Vậy thì màn hình sẽ trông như thế nào khi chỉ có 1 hàng dữ liệu? Vài tấm hình? Một hồ sơ chưa hoàn chỉnh?

Trạng thái thành phần là màn hình mà mọi người sẽ thấy khi trang không còn trống rỗng và thưa thớt. Công việc của bạn ở đây là ngăn không cho người dùng cảm thấy nản và từ bỏ sử dụng sản phẩm.

Đây là cơ hội tuyệt vời để áp dụng thiết kế tương tác vi mô để dẫn người dùng tới lúc sản phẩm đạt trạng thái lý tưởng cao nhất. Nó là hành trình mà bạn chăm sóc khách hàng và cho họ nhận ra giá trị thật sự của sản phẩm. Nó là thành tựu đạt được khi khách hàng bỏ thời gian cho sản phẩm để thấy được thoáng qua tiềm năng của nó, lôi cuốn khách hàng.

Một vài quy tắc thiết kế trò chơi có thể hữu ích ở đây. Hãy xây dựng cái gọi là sự tăng tốc trong trạng thái này của sản phẩm.

Đây là 1 điều khoản trong thiết kế trò chơi mà giúp 1 người chơi hình dung họ sẽ trở nên mạnh mẽ như thế nào trong tương lai, dẫn dắt họ qua danh sách các công việc định trước để hoàn thiện việc tiếp thu tầm nhìn này. Mẹo ở đây là làm cho người chơi không nhận ra rằng họ đang thực hiện cái gọi là nhàm chán để có thể tận dụng tối đa giá trị của sản phẩm.

"Những người chơi tham gia vào quá trình tăng tốc không nghĩ tới sự nhàm chán họ phải lặp lại để có thể lên cấp, họ chỉ làm nó và thưởng thức tỉ lệ tăng tốc của kết quả … Hơn nữa, những người chơi này bị bắt trong 1 viễn cảnh mà nhân vật của họ sẽ mạnh mẽ theo 1 cách mà họ cũng chưa hiểu được. Nói theo kiểu chuyên ngành, họ đang suy luận sự tăng tiến cấu trúc sức mạnh theo luỹ thừa mà nó biến mất khỏi ranh giới định trước nhân vật của họ. Nó không giống như đúc như dòng chảy truyền thống, nhưng sự hăng say của người chơi là rất tương đồng."

Sau đây là 1 vài ví dụ của trạng thái thành phần:

{% img center /images/2016/11/18/image_16.jpg Thanh "Sự hoàn thiện hồ sơ" nổi tiếng của LinkedIn, khuyến khích bạn thực hiện những công việc chỉ định để đạt được 100%. %}

{% img center /images/2016/11/18/image_15.jpg Dropbox cho bạn biết bạn gần như thế nào để đạt được dụng lượng lưu trữ cộng thêm, đây là sức hút chính cho người dùng của Dropbox, tôi chắc chắn như vậy. Dropbox không chỉ cho bạn thấy còn bao nhiêu bước nữa để hoàn thành, mà những bước này còn có tác dụng bên lề là làm cho người dùng thấy giá trị hơn thông qua học và hành. %}


### **Trạng thái tải**

Trạng thái này rất dễ dễ nhìn vào, rất nhiều người thiết kế sản phẩm thêm nó vào như là phần sau cùng, nhưng nó là 1 gánh nặng thật sự để thiết lập được như mong đợi. Khi ứng dụng đang tải dữ liệu, đợi kết nối internet hay chuyển qua màn hình khác, bạn phải dành sự quan tâm đặc biệt về việc làm sao để thể hiện nó. Việc này bao gồm như là tải chiếm toàn bộ trang, tải 1 phần nội dung hay là tải 1 dòng, thường được sử dụng như là người dùng tìm kiếm tên tài khoản có sẵn trong 1 ô dữ liệu nào đó.


Và sự nhận thức được việc tải trang là quan trọng không kém, người thiết kế thường đơn giản là để màn hình trống và các vòng xoay, đặt 1 gánh nặng về trách nhiệm rất lớn lên nội dung mà không phải ở đó. Việc này lại khiến khách hàng nhìn vào cái đồng hồ đang chạy đó - chuyển hướng sự tập trung lên cái chỉ số tiến trình xoay so với tiến trình thực sự đang được tải.

[Đây là niềm tim của Luke Wroblewski](http://www.lukew.com/ff/entry.asp?1797), 1 chuyên gia thiết kế sản phẩm, đã làm ra Polar (đã bán), 1 ứng dụng hỏi đáp.

Wroblewski và đội của anh ta phát hiện ra rằng sau khi hiện thực 1 loạt các vòng tải trang cho mỗi câu hỏi, khách hàng của Polar bắt đầu phàn nàn rằng có vẻ ứng dụng này có vẻ chậm hơn, nói những câu như "Phải bỏ 1 lượng lớn thời gian chờ đợi cho trang có thể tải lại - nó có vẻ như không nhanh hơn phiên bản trước."

Và anh ta nhận ra rằng:

"Với sự cho ra mắt cái chỉ số tải trang này, chúng ta đã làm mọi người xem cái đồng hồ, và kết quả là thời gian trôi chậm hơn cũng như ứng dụng vậy, chúng ta đã tập trung vô cái chỉ số mà không phải là tiến trình. Và rõ ràng rằng bạn đang tiến tới mục tiêu của mình chứ không phải là ngồi đợi."

#### **Các khung màn hình**

Sự nhận thức này đã dẫn tới 1 cái sáng tạo mà anh ta gọi là "Các khung màn hình". Nó là 1 kĩ thuật đang được sử dụng ở Pinerest và Facebook với các phiên bản web và điện thoại của họ.

Các khung màn hình này là 1 sáng tạo để thay thế trạng thái đang tải - nó là những chỗ tập trung vào nội dung sẽ trông như thế nào so với thực tế là nội dung đang được tải. Việc này được hoàn thành bằng việc hiển thị cấu trúc cơ bản của trang và dần dần làm đầy những chỗ trống trong lúc lúc nó đang tải về. Kĩ thuật này sẽ loại bỏ những vòng xoay hoàn toàn, và nó tăng cảm giác về hiệu suất cho sản phẩm.

{% img center /images/2016/11/18/image_18.jpg Ứng dụng Polar của Luke Wroblewski và các khung màn hình khi tải. %}

￼
Với Pinterest, khi thực hiện cái khái niệm này đã thêm 1 thay đổi duy nhất vào lúc hiện thực: chuyển hoá "màu trung bình" của hình ảnh và sử dụng màu này để làm tô màu nền cho nó. Cho nên là khi cái hình đang tải, bạn sẽ có cảm giác là đang xem trước được cái hình nó sẽ như thế nào.

{% img center /images/2016/11/18/image_19.jpg %}

Facebook sáng tạo ra 1 kĩ thuật tương tự, được sử dụng trong ứng dụng Paper và sau này là trong bản web của họ. Kết hợp với cái mà họ gọi là "hiệu ứng chiếu sáng", nó sẽ hiển thị màn hình khung được chau chuốt với hình dạng giống với nội dung và có hiệu ứng như là chiếu sáng vậy.

#### **Cho là thành công với các hành động lạc quan**

{% img center /images/2016/11/18/image_20.jpg %}

"Không ai muốn chờ khi họ đợi cả", [Mike Krieger đồng sáng lập Instagram đã nói vào năm 2011](https://speakerdeck.com/mikeyk/secrets-to-lightning-fast-mobile-design) để mô tả các nổ lực của anh ta để đạt được cảm giác nhanh chóng cửa ứng dụng.

Krieger, là người tiên phong về khái niệm rằng các hành động trên sản phẩm nên được thực hiện "một cách lạc quan". Bằng việc cứ cho rằng hành động đó là thành công, thì hành động sẽ tỏ ra là nhanh hơn rất nhiều.


Hãy xem xét trường hợp "thích" 1 bức hình hay bình luận, cả 2 trường hợp này, hành động từ phía người dùng tỏ ra là đã xong ngay lập tức, nhưng ở đằng sau thì sản phẩm đang gửi yêu cầu tới máy chủ để thật sự hoàn thiện hành động này.

Hành động lạc quan cũng có thể giúp để giảm thiểu tốc độ đạt được khi tải phương tiện lên, thay vì tải lên khi người dùng ấn nút "Tải", thì Instagram đã tải lên ngay khi người dùng chọn cái hình rồi, mặc dù nó không phải là giải pháp kĩ thuật tốt - và dữ liệu sau đó có thể không được sử dụng bởi người dùng nữa, nhưng nó lại làm công đoạn tải lên có vẻ rất nhanh. Theo phương châm “Đi khi không ai nhìn" có thể giúp làm cho tốc độ của sản phẩm tăng lên.

Bạn đã trải qua 1 vài ví dụ của UI Stack và 5 trạng thái cô lập của nó. Nhưng làm thế nào để chúng có thể làm việc được với nhau? Làm sao thể giao diện người dùng chuyển giao giữa các trạng thái này? Đó là sức mạnh của UI Stack. Những trạng thái này không tồn tại 1 chỗ, nó tồn tại song song và có thể gọi tới bất kì lúc nào. Đó là công việc của bạn để không chỉ chú ý tới mỗi trạng thái mà còn quyết định xem mà hình sẽ di chuyển như thế nào giữa các trạng thái này.

Tôi đã tạo ra 1 ứng dụng nhắn tin giả thuyết để miêu tả các ý tưởng này.

Tại sao lại là ứng dụng nhắn tịn? Bởi vì nó không phải là 1 ví dụ rõ ràng ngay của các trạng thái, nhưng tôi nghĩ nó là ví dụ tốt để ngay cả giao diện người dùng cổ điển như giao diện tin nhắn cũng làm theo các luật của UI Stack. Và còn xa hơn nữa, là sự mô tả về trách nhiệm bao la của chúng ta để đảm bảo rằng mỗi trạng thái của màn hình di chuyển mượt mà với nhau.

Vậy thì chúng ta phải giải quyết những gì với 1 ứng dụng nhắn tin?

Khi không có tin nhắn nào, nó sẽ là trạng thái trống.

Khi chỉ có 1 bên gửi 1 tin nhắn, nó sẽ là trạng thái thành phần.

Khi đang nhận tin nhắn - hiện ra chỉ số đang gõ phím, thì nó là trạng thái tải.

Có 1 loạt các trạng thái tải khác nhau như khi gửi tin nhắn đi, và khi có xác nhận đã gửi. 

Lỗi cũng có thể xảy ra, đó là khi tin nhắn không gửi đi được.

Và cũng không nên quên cơ chế để gửi lại tin khi xảy ra lỗi, đây cũng là 1 phiên bản của trạng thái tải.

Và cuối cùng là trạng thái lý tưởng là khi những tin nhắn kếp hợp thành 1 cuộc trò chuyện.

## Một ví dụ giả định

Hãy cho rằng Marty và Doc vừa mới cho nhau số điện thoại và Marty muốn gửi tin cho Doc về thứ mà anh ta vừa chứng kiến ở siêu thị Twin Pines.

Bởi vì không có tin nhắn nào trước đó, chúng ta có cơ hội để khai tác trạng thái trống và khuyến khích người dùng làm những thứ mà mình muốn họ làm - trong trường hợp này là gửi tin nhắn.

Nhưng điều gì sẽ xảy ra với trạng thái này khi 1 tin nhắn đã được gửi đi? Chúng ta phải dần dần xoá bỏ trạng thái trống và chuyển đổi sang trạng thái thành phần: trong trường hợp này, là khi Marty chỉ gửi đi 1 tin nhắn.

{% video /images/2016/11/18/1.empty-to-partial.mov %}


Hãy tới phần tiếp theo khi Doc trả lời, anh ấy cũng gửi lại 1 tin - nhưng chưa xong, anh ta đang gửi lại tiếp, cho nên mới có cái chỉ số đang gõ phím, 1 hình thái khác của trạng thái tải.

{% video /images/2016/11/18/2.message-incoming.mov %}


Khi mà đã gõ xong, thì tin nhắn được gửi đi, chúng ta chuyển chỉ số đang gõ phím ra và thay vào là cái tin nhắn mới này, đẩy các tin còn lại ra chỗ khác.

Chuyện gì sẽ xảy ra khi Marty muốn trả lời lại? Đầu tiên, chúng ta phải cho trạng thái nhận thức là đã có tin nhắn trong ô nhập rồi - để ý nút "Send" chuyển từ màu xám (không cho phép) sang xanh (cho phép). Rồi sau đó khi gửi tin đi thì 1 trạng thái tải khác xảy ra cho tiến tình gửi này. Chúng ta làm tin nhắn mờ đi trong lúc này vì tin chưa được gửi tới nơi - cho đến khi nó hiện chữ “delivered" thì lúc đó mới thành công.

{% video /images/2016/11/18/3.message-send.mov %}


Nếu tin nhắn không gửi đi thành công thì sẽ thế nào? Đây chính là trạng thái lỗi, dấu hiệu màu đỏ thay thế cho vòng xay đang tải, và tin nhắn này là đang ở trạng thái "gửi không được". Ấn lại vào tin nhắn chưa được gửi này thì nó sẽ thử gửi lại, và nó đã thành công và nhận được chỉ thị đã được gửi.

{% video /images/2016/11/18/4.error-recovery.mov %}


## Ở thế giới thực tế...

Vậy là chúng ta đã thông qua UI Stack ở trên, đó là 5 trạng thái của màn hình và sự chuyển giao mượt mà giữa chúng. Nếu không có các thành phần chuyển giao này, chúng ta sẽ làm khách hàng lẫn lộn và bất ngờ vì các trạng thái mới hiện và ẩn. Làm cho họ không thoải mái và mơ hồ không phải là công việc của chúng ta đúng không?

Cuối cùng thì, việc hiện thực những trạng thái này yêu cầu 1 sự kết hợp gắt gao giữa thiết kế và phát triển. Hãy đầu tư thời gian vì chúng liên quan tới nhau để tạo ra thứ tốt nhất, trải nghiệm toàn diện cho khách hàng của bạn.

## Kết luận

* Đừng chỉ thiết kế cho mỗi trạng thái lý tưởng không mà quên đi những trạng thái khác. Sản phẩm là xử lý các vấn đề, làm sao mà mỗi trạng thái của màn hình có thế dẫn dắt khách hàng đến với mục tiêu đó?

* Hãy đọc *[The Elements of User Onboardin*g](https://www.useronboard.com/training/).

* Hãy làm những trạng thái tải là 1 phần nỗ lực trong lúc tạo mẫu của bạn. Nó là 1 phần trong trải nghiệm sản phẩm và không nên để đến cuối mới làm. Hãy kết hợp các kỹ thuật để tìm các những cách tạo cảm giác, và nếu có thể, hiệu suất tốt hơn.

* Bỏ thời gian nghĩ tới các trường hợp ngoài lề mà có thể tạo ra lỗi. Bạn sẽ xử lý nó như thế nào? Phản ứng thân thiện nhất của khách hàng mà bạn sẽ nhận được là gì? Có giá cả / lợi ích đánh đổi với nhau ở đây, nhưng ít nhất hãy xử lý những lỗi đau đớn nhất và nổ lực hết mức để bảo vệ dữ liệu cho khách hàng.

