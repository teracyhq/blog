layout: post
title: "URIs tốt sẽ không bao giờ thay đổi"
author: phuonglm
date: 2016-09-27 11:33
comments: true
categories:
    - "vi"
    - "trans"
tags:
    - "organization"
    - "management"
    - "document"
cover: /images/2016/09/27/broken.jpg
description: Một số sai lầm trong việc thiết kế và duy trì các URI trong các sản phầm/tài liệu của bạn.
published: true
---
# URIs tốt sẽ không bao giờ thay đổi.
Theo bạn URIs thế nào là tốt ? Nhưng kiểu đường dẫn nào sẽ bị thay đổi theo thời gian? Đường dẫn không tự thay đổi chỉ có con người khiến nó thay đổi.
Theo lý thuyết thì không có lý do nào có thể biện minh cho đổi ( hoặc là không duy trì ) URIs của trang web, vậy mà khi áp dụng trên thực tế thì lại có muôn vàng lý do mà dưới đây là một vài ví dụ.

* Chúng tôi sắp xếp lại nội dung trang web để đem lại trải nghiệm tốt hơn.
Có phải như bạn cảm thấy không thể duy trì URIs cũ như hiện tại? Nếu mà bạn cảm thấy như thế thì bạn đã chọn quy tắc đặt URIs thật tệ và liệu bạn có suy nghĩ kỹ càng hơn với URIs mới để giữ nó tiếp tục tồn tại trong bảng thiết kế tiếp và tiếp sau đó nữa.

* Chúng tôi có qua nhiêu tài liệu và chúng tôi cập nhật lại nội dung, quyền truy cập và tính đúng đắng của tài liệu nên chung tôi quyết định thay đổi URIs để cấp phát lại từ đầu.
Hmm, có lẽ tôi có thể đồng cảm với việc này - W3C đã từng trải qua thời kỳ như vậy khi mà chúng tôi đã phải sàn lọc cẩn thận quyền truy cập của từng tại liệu trước khi cho phép nó được truy cập rộng rãi. Các giải quyết là mọi tài liệu cần được hoạch định trước - hãy quy ước rõ và lưu trữ các thông tin của tài liệu đại loại như tài liệu được phân phối như thế nào, ngày tạo tại liệu và khi nào tài liệu đấy hết hiệu lực.

* Uhmm, chúng tôi thấy rằng chùng tôi phải chuyển các file đến thư mục khác.
Đây là một trong những lý do vụng về nhất. Có vẻ có nhiều người không biết rằng các máy chủ Web đều cho phép bạn tùy chỉnh rất linh hoạt mối quan hệ giữa đường dẫn và file thực tế được sử dụng trên hệ thống. Hãy nghĩ rằng URI là một tập các tên trừu tượng, được sắp xếp một cách gọn gàng sau đó hãy gán nó vào những file/ứng dụng cụ thể trong hệ thống của bạn và sau đó hay cấu hình máy chủ web một tẹo để thể hiện việc gán ghép đấy.

* Tài liệu này là của John giờ thì John té rồi và Mary sẽ tiếp quản tài liệu đấy.
Hãy nghĩ lại đi, thế éo nào mà tên của John lại nằm trên URIs? Nó nằm trong thư mục của John nên nó John phải trên URI à ? *@##*@

* Trước đây tôi dùng CGI script còn giờ thì chúng tôi chuyển sang dùng một chương trình khác.
  Việc bạn cứ phải chạy theo cấu trúc URI của một kiểu chương trình/Framework này và rồi sau đó thay đổi nó chỉ vì bạn sử dụng một chương trình khác nghe thật là điên rồ. Ngoài ra việc bạn không cấu hình lại được URI cho phần mềm đấy còn để lộ thông tin về cách thức hoạt động của máy chủ của bạn cho người khác thấy ( kiều như bạn dùng máy chủ kiểu gì, phần mềm nào ) và điều đó cũng hơi nguy hiểm đấy. Tóm lại là rất bất hợp lý nếu bạn thay đổi cơ chế hoạt động và wov tất cả các đường dẫn đều phải thay đổi dù nội dung của bạn không thay đổi gì

   Lấy ví dụ cho điều này là trang thông tin khoa học quốc gia (Hoa kỳ):
   http://www.nsf.gov/cgi-bin/pubsys/browser/odbrowse.pl
   Đây là trang tìm kiếm tài liệu của trang thông tin khoa học, rõ ràng đây không có vẻ là URI được thiết kế cho việc tồn tại trong... vài năm! "cgi", "oldbrowse" và ".pl" đã để lộ cách thức làm việc của cơ chế bên dưới. Tuy nhiên URI của kết quả tìm kiếm của trang thông tin khoa học quốc gia thì ổn hơn rất nhiều.
   http://www.nsf.gov/pubs/1998/nsf9814/nsf9814.htm
  Với phần đầu là "pubs/1998" cho ta gợi ý để biết rằng đó là tài liệu cũ từ năm 1998, cho dù thêm 100 năm nữa vào năm 2098 tài liệu thì có thể khác nhưng thì URI dạng này vẫn sẽ hợp lệ và NSF cho dù vẫn lưu trữ tài liệu cũ thì vẫn sẽ không phải lúng túng về URI này.

* Tôi không nghĩ rằng URLs sẽ phải cố định - chỉ có URNs mới cần cố định.
   This is the probably one of the worst side-effects of the URN discussions. Some seem to think that because there is research about namespaces which will be more persistent, that they can be as lax about dangling links as they like as "URNs will fix all that". If you are one of these folks, then allow me to disillusion you.
  Most URN schemes I have seen look something like an authority ID followed by either a date and a string you choose, or just a string you choose. This looks very like an HTTP URI. In other words, if you think your organization will be capable of creating URNs which will last, then prove it by doing it now and using them for your HTTP URIs. There is nothing about HTTP which makes your URIs unstable. It is your organization. Make a database which maps document URN to current filename, and let the web server use that to actually retrieve files.
   If you have gotten to this point, then unless you have the time and money and contacts to get some software design done, then you might claim the next excuse:

* Chúng tôi muốn điều đó nhưng chúng tôi không có công cụ.
  Tôi có thể hiểu và hoàn toàn đồng ý về lý do này. Bạn cần phải làm gì để máy chủ web luôn sử dụng một URI cố định và trả về đúng dữ liệu cho dù bạn có sử dụng hệ thống nào, lưu trữ ra sao tại bất kỳ thời điểm nào. Liệu bạn có cho rằng bạn có thể lưu URI ngay trong chính bản thân tài liệu như là một cách để đối chiếu và liên tục cập nhập cơ sở dữ liệu để khiến URI luôn đúng. Bạn sẽ muốn lưu trữ mối quan hẹ giữa các phiên bản của bảng dịnh của tài liệu đó. Ngoài ra bạn còn cần lữu trữ thông tin checksum để đảm bảo tính toàn vẹn của dữ liệu theo thời gian. Và như bạn thấy đấy, máy chủ web về cơ bản không phải là công cụ có thể cung cấp những điều đấy cho bạn. Khi bạn tạo một tài liệu mới, chính trình soạn thảo nên hỏi bạn về URI nên như thế nào chứ không phải trình soạn thảo sẽ cung cấp URI cho bạn.

  Bạn cũng cẩn phải có thể thay đổi được một vài thứ như ai là chủ sở hữu của tài liệu, quyền truy câp ra sao, bla bla bla mà không phải thay đổi gì về URI.

  Tại W3C chúng tôi sử dụng Jigedit để hỗ trợ việc theo dõi các phiên bản của tài liệu và chúng tôi đang thử nghiệm với các công cụ để tạo tài liệu. Nếu bạn là người viết công cụ, máy chủ thì hãy nhớ nhé.

# Tại sao tôi phải quan tâm
Khi bạn thay đổi URI trang web của bạn, bạn sẽ không bao giờ biết được ai vẫn đang giữ URI cũ và khi một ai đó click vào URI nhưng nó không tồn tại thì thường họ sẽ mất niềm tin vào trang web đáy. Thiệt hại sẽ là hiển nhiên khi để người sử dụng phàn nàn về những đường link như thế.

# Vậy tôi phải bằt đầu từ đâu? Thiết kế URIs?

Nếu bạn muốn URI của bạn sẽ vẫn đúng đắn sau 2 năm hay 200 năm tới, thì hãy suy nghĩ về nó thật kỹ. URIs thay đổi khi một vài thông tin trong bản thân nó thay đổi. Và rất thất thiết cho việc phải thiết kế URI? Và việc thiết kế đấy như thế nào nhỉ, đầu tiên là hay loại bỏ bớt các thông tin không cần thiết ra khỏi URI.

Ngày khởi tạo của tài liệu là một tham số sẽ không bao giờ thay đổi và nó rất hữu ích cho việc phân loại truy nhập từ hệ thông mới hay hệ thống cũ. Về cơ bản đấy là khởi đầu tốt cho một thiết kế URI ổn định.

Có một ngoại lệ ở đây chính là url dùng cho "mới nhất" hay trang "nhất", ví dụ như url ở dưới đây:
http://www.pathfinder.com/money/moneydaily/latest/

* Cái gì nên bỏ ra khỏi URL

  Hmm, ngoại trừ ngày tháng thì những phần khác chỉ tổ khiến mọi thứ rắc rối hơn thôi. VD:

  * Sử dụng tên tác giả - tác giả có thể thay đổi theo từng phiên bản của tài liệu, chỉ cần tác giả té thì url của tài liệu xem như là đã "xác định".
  * Dùng tiêu đề của tài liệu - Ban đầu thì có vẻ tốt nhưng dần dần nó sẽ bị thay đổi rất nhanh khi tài liệu được cập nhật.
  * Trạng thái của tài liệu - trạng thái của tài liệu không nên được thiết lập trong uri, uri của tài liệu mới nhất cần được cố định bất chấp tài liệu có trạng thái như thế nào đi nữa.
  * Thông tin truy nhập - Tại W3C, chúng tôi chia quyền truy cập trang web thành 3 mục chính, nội dung dành cho chúng tôi, nội dung dành cho các thành viên và những nội dung công cộng. Ban đầu sử dụng uri riêng cho từng quyền truy nhập có vẻ ổn nhưng khi chúng tôi chuyển tài liệu từ quyền truy nhập này sang truy nhập khác thì link cũ sẽ không còn tồn tại và gây nên lỗi. 
   * Đuôi của file truy nhập - Đây là lỗi thường gặp ".cgi" ".html" là những thứ sẽ thay đổi theo thời gian. Bạn có chắc là bạn sẽ vẫn dùng html hay cgi hay php trong 20 năm tới? Hãy Google cấu hính "uri rewrite" đi trời ạ.
  * Đường dẫn chỉ ổ đĩa - !!? vâng, nhưng tôi đã từng thấy rồi đấy thưa các bạn.

  Một URI đơn giản và tốt có thể ở dạng như sau:

  http://www.w3.org/1998/12/01/chairs

* Phân loại tài liệu theo từng đề mục:

  Đây là một con dao 2 lưỡi mà đối khi rất khó để tránh khỏi. Thường thì việc sử dụng đề mục trong uri khi bạn phân loại tài liệu dựa vào đặt tính tài liệu mà bạn đang làm việc. Các đặt tính sẽ dần thay đổi theo thời gian, vd là ở W3C chúng tối đang định đổi "MarkUp" thành "Markup" và rồi chúng tối lại sẽ đổi thành "HTML", bạn thấy đấy, các khái niệm sẽ dần thay đổi theo thời gian VD như liệu sau này chúng ta có còn sử dụng "Stylesheet" liệu có còn khái niệm "Lịch sử truy nhập" trong trình duyệt nữa không !?

  Vận hành và quản lý trang web của một tổ chức là rất khó, mà thật ra tổ chức cái gì cũng vậy. Giải pháp trung hạn của bạn có thể sẽ trở thành trở ngại lớn trong dài hạn.

  Thêm vấn đề nữa của việc phan loại này là mỗi người sẽ có cách phận loại riêng của mình, sự liên kết giữa các khai niệm là không cố định theo từng cá nhân và nó sẽ tiềm ẩn nguy cơ rất lớn khi bạn phân loại theo mô hình cây như vậy. Tóm lại là nếu bạn phân loại theo chủ để trong uri nghĩa là bạn đang sử dụng một kểu phân loại như vậy và các phân loại ngay khái niệm phân loại sẽ thay đổi trong tương lại và điều đó sẽ khiến uri bị hỏng.

* Đừng quên cả việc thiết kế tên miền nữa nhé

  Nhưng lưu ý về URI ở trên không chỉ giới hạn trong phần địa chỉ mà còn trong cả tên miền. Nếu bạn có máy chủ riêng cho những thứ của bạn, hãy nhớ việc phân chia sử dụng subdomain sẽ tiềm ẩn gnuy cơ khiên nhiều URI không còn tồn tại trong tương lai. Nhiêu quản trị hệ thông cảm thấy thoải mái hơn khi phân chia mọi thứ theo domain con như kiểu "cgi.pathfinder.com", "lists.w3.org" nhưng hay cẩn thận và suy nghĩ thật cẩn thận khi sử dụng nhiều hơn một tên miền cho trang web của bạn của bạn. Vận dụng khéo léo việc tạo ra các trang chuyển hướng sẽ giúp bạn quản lý tốt hơn..

# Kết luận
Thiết kế và sử dụng URIs nhất quản trong 2, 20 hay thậm chí 2000 năm chắc chắn là không đơn giản. Tuy nhiên vì các đồng chí quản trị cứ hay đưa ra những quyết định khiến cho họ lâm vào rắc rối trong tương lai. Thường thì do họ sử dụng những công cụ có sẵn và công cụ đấy lại có tầm nhìn quá ngắn hạn và bản thân họ cũng không thấy được những vấn đề lớn trong tương lại khi các URI của họ bọ thay đổi. Thông điệp ở đây là, hay cố gắng thiết kế URI làm sao cho dù mọi thứ thay đổi ( cộng nghệ, hệ thống, con người, các tham số, thuộc tính) thì URI của bạn vẫn luôn cố định và tất nhiên là truy cập được :).
