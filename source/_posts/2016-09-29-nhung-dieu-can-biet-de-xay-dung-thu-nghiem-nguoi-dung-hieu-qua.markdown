---
layout: post
title: "Những điều cần biết để xây dựng thử nghiệm người dùng hiệu quả"
author: hoavu
date: 2016-09-29 09:40
comments: true
categories:
    - "vi"
    - "trans"
tags:
    - "testing"
    - "design"
    - "ux"
cover: /images/2016/09/29/xay-dung-thu-nghiem-nguoi-dung.png
description: Những điều cần biết để xây dựng thử nghiệm người dùng hiệu quả
keywords: user testing, design, UX, trải nghiệm người dùng, thiết kế
published: true
---

{% img center /images/2016/09/29/xay-dung-thu-nghiem-nguoi-dung.png Xây dựng thử nghiệm người dùng %}

Gần đây số lượng các ứng dụng trong thị trường android và iOs đã vượt xa con số 8 triệu, ngoài ra còn
có một con số không giới hạn các trang web và các ứng dụng web đang xuất hiện khắp nơi trên thế giới
nữa. Với khối lượng khổng lồ các ứng dụng đó thì điều khan hiếm nhất là khoảng thời gian tập trung
của người dùng cho mỗi ứng dụng.

Thách thức lớn nhất trong thiết kế UX là thu hút được nhiều thời gian tập trung của người dùng.
Điều này đặt ra một thách thức với người chủ sở hữu sản phẩm và những người thiết kế UX làm sao thiết kế
ra những ứng dụng thu hút được sự chú ý và tham gia của người dùng.

<!-- more -->

Tại sao thử nghiệm người dùng lại đặc biệt quan trọng như vậy
============================================================
Một trong những cách rất hiệu quả để đảm bảo chuyển đổi và tham gia tốt hơn là thực hiện "thử nghiệm
người dùng" (Hay đúng hơn là thử nghiệm khả năng sử dụng). Đó là một cách khoa học để tìm ra những gì
mà người dùng dễ dàng tìm thấy và những điều họ phải làm. Nghiên cứu về người dùng thường xuyên được
thảo luận bởi rất nhiều lãnh đạo nhóm thiết kế bao gồm [IDEO](https://medium.com/@ideo),
[frog](https://medium.com/@frogdesign) và nhiều nhà thiết kế khác.

Chúng tôi đã quan sát một số những đội ngũ hàng đầu thế giới có kinh nghiệm thiết kế phục vụ hàng triệu
người dùng trên toàn cầu và đã rút ra được vài bài học nhanh chóng mà bạn có thể sử dụng trong nghiên
cứu người dùng sắp tới của mình:

1. Biết được bạn đang mong muốn gì
==================================
Thậm chí trước khi bạn nghĩ về thử nghiệm người dùng, bạn nên đặt ra cho mình một mục tiêu nào đó.
Các cách xây dựng mục tiêu có thể sẽ khác nhau nếu như bạn đang giải quyết vấn đề về thiết kế của
một ứng dụng hiện có hoặc khi bạn thẩm định một thiết kế hoàn toàn mới của một ứng dụng sắp được tung ra.

- **Đối với ứng dụng/trang web hiện có**: Bạn có được những quan sát về các vấn đề thiết kế từ Google
Analytics, Mixpanel. Giải pháp của vấn đề này đó là bạn là người dùng thử nghiệm trên những thách thức
hiện tại trong khi khám phá các cách khác để cải thiện. Ví dụ: đối với ứng dụng thương mại điện tử,
người dùng có thể thêm một số sản phẩm vào giỏ hàng, nhưng họ sẽ quay lại để xem chi tiết sản phẩm thay vì thanh toán.

Đối với những ứng dụng hiện có, cải thiện kết quả kinh doanh chính là mục tiêu chính của thử nghiệm người dùng.

Ví dụ, mục tiêu chính đối với ứng dụng hiện có trong ví dụ trên là chuyển từ giỏ hàng sang mục thanh toán.

- **Đối với ứng dụng/trang web sắp ra**: với ứng dụng sắp được tung ra, bạn cần phải có giả thuyết thiết kế nhất định bao gồm: hướng dẫn thương hiệu, thành phần thiết kế... Ví dụ: với trường hợp ứng dụng âm nhạc, bạn đưa ra lựa chọn các tab cho các loại nhạc khác nhau thay vì dùng bộ lọc. 
Đối với ứng dụng sắp ra, mục tiêu chính có thể là xác nhận các giả thuyết thiết kế.

Trong ví dụ của chúng tôi, chúng tôi muốn xác nhận liệu người dùng sẽ sử dụng các tuỳ chọn để tìm các loại âm nhạc thay vì sử dụng bộ lọc.

**Việc thiết lập mục tiêu ngay từ đầu khi kiểm thử sẽ giúp bạn có những câu hỏi đúng**.

2. Tuyển chọn người dùng thử nghiệm cẩn thận
===========================================
Khi bạn đã quyết định được mục tiêu thử nghiệm người dùng, bạn cần phải kiểm tra người dùng để thực hiện
thử nghiệm người dùng. Khi một sản phẩm được xây dựng, bạn cũng đã có hồ sơ người dùng và bạn có một vài người dùng thực - những người muốn được xem các ứng dựng mới. Bạn có thể cùng họ thực hiện kiểm thử.

Mặc dù rất dễ dàng để kiểm thử với người dùng hiện tại nhưng cũng thật cẩn thận để loại bỏ thành kiến từ những trải nghiệm của họ.

Để giảm bớt thành kiến từ những kinh nghiệm sẵn có, bạn có thể muốn tạo một phiên bản đầy đủ các ứng dụng để làm cho toàn bộ trải nghiệm của họ tự nhiên hơn.

Bạn có thể muốn vẽ minh hoạ liên quan mật thiết tới người dùng của bạn.

{% img center /images/2016/09/29/ho-so-nguoi-dung-cua-airbnb.jpeg Hồ sơ người dùng của airbnb %}

Tuy nhiên, trong trường hợp của một ứng dụng mới, bạn hiểu vấn đề bạn sẽ phải giải quyết và giải
quyết cho ai. Hãy thu hẹp vấn đề càng nhỏ càng tốt. Dưới đây là một số câu hỏi mà bạn cần hỏi khi lựa
chọn người dùng mẫu cho thử nghiệm người dùng:

- **Liên quan**: Ứng dụng của bạn có liên quan tới người dùng thử nghiệm không?

- **Tần suất sử dụng**: Người dùng này có thường xuyên sử dụng ứng dụng của bạn trong công việc mà người đó làm hay không?

- **Nhân khẩu học**: Sự khác biệt văn hoá là một yếu tố quan trọng đối với trải nghiệm của người dùng. Tập trung vào nơi ở, tuổi, giới tính khi lựa chọn người dùng mẫu. 

- **Mức thu nhập**: Những người dùng này có sẵn sàng trả tiền để sử dụng ứng dụng/dịch vụ của bạn không? Điều này bao gồm cả khả năng tài chính và thói quen mua sắm.

Bạn còn nghĩ ra được ý tưởng nào nữa không? Hãy cho chúng tôi biết nhé.

3. Thời điểm nào thích hợp cho việc kiểm thử người dùng?
=======================================================
"Tôi sẽ đợi tới giao diện cuối cùng để tiến hành kiểm thử người dùng". Chủ sở hữu sản phẩm chỉ tiến hành kiểm thử người dùng khi họ có được phiên bản cuối cùng. Đó không phải là một ý hay, bởi vì khi đó bạn sẽ phải lặp lại hầu hết thời gian và công sức đã bỏ ra.
Lặp lại ngay khi có thể trong quy trình thiết kế để tiết kiệm thời gian và công sức.
{% img center /images/2016/09/29/quy-trinh-thiet-ke.jpeg Quy trình thiết kế %}

Những mong đợi trong các giai đoạn khác nhau của quy trình kiểm thử người dùng.

- **Từ ý tưởng đến phác hoạ bằng tay**: Thảo luận các ý kiến trên giấy bút hoặc trên bảng trắng. Tập hợp các phác hoạ bằng tay vào CanvasFlip và mời người dùng nội bộ kiểm thử.

- **Từ phác họa bằng tay đến thiết kế khung sườn (wireframing)**: Trong giai đoạn này, bạn gần như đã tạo được hình dáng phiên bản giao diện người dùng, xác định các icon và nhãn. Cách tốt nhất là giới thiệu chúng đến người dùng bên ngoài nhưng ở quy mô nhỏ.

- **Từ thiết kế khung sườn đến mockup ban đầu**: Khi bạn xây dựng các mockup, bạn nên giới thiệu chúng đến người dùng để thu được các trải nghiệm ban đầu. Bạn tiếp tục sửa đổi và đưa ra bản giao diện người dùng cuối cùng trên cơ sở nhận xét của người dùng ở giai đoạn này.

Hầu hết các nhóm nổi tiếng đều sử dụng công cụ phân tích UX như CanvasFlip để tạo ra dòng UX tương tác (nguyên mẫu) và tạo ra bộ phân tích UX như video người dùng, quy trình chuyển đổi hình phễu, và bản đồ nhiệt tương tác.

4. Mức độ tham gia của bạn như thế nào trong quá trình kiểm thử người dùng
==========================================================================
Luôn có sự đánh đổi giữa việc tạo ra một ngữ cảnh kiểm thử theo giời gian thực và việc quan sát người dùng.
Khi bạn quan sát người dùng chặt chẽ,họ sẽ càng có ý thức và đưa ra quyết định mang tính quyết đoán hơn so với bản năng. 

{% img center /images/2016/09/29/kiem-thu-tinh-kha-dung.png Kiểm thử tính khả dụng %}

Trên cơ sở mức độ tham gia của người dùng, có thực hiện 3 cách kiểm thử người dùng:

- **Kiểm duyệt tại chỗ**: Trong giai đoạn này, bạn sẽ luôn ở cạnh người dùng, yêu cầu tiến hành các tác vụ, ra câu hỏi và quan sát phản ứng. Điều này sẽ có ích ở giai đoạn đầu phát triển thiết kế.

- **Kiểm duyệt từ xa**: Trong giai đoạn này, bạn có thể kết nối qua Skype, Google Hangout, Zoom hoặc Go-to-Meeting... Bạn có thể yêu cầu nhiệm vụ thực hiện và quan sát phản ứng. Nói chung là giữ cho sự tương tác càng ít càng tốt. Điều này hữu dụng trong giai đoạn dựng khung và thiết kế mockup.

- **Không kiểm duyệt**: đúng như tên của nó, một thử nghiệm người dùng không được kiểm duyệt được tiến hành mà gần như không có sự can thiệp nào. Người dùng được đưa cho một nguyên mẫu thiết kế (phototype) và yêu cầu chạy thử hoặc đưa ra một tác vụ để thực hiện. Ví dụ: Mua/tìm kiếm một item nào đó. 

5. Cách phân tích kết quả thử nghiệm người dùng
==============================================
Khi bạn tiến hành thử nghiệm người dùng bằng bản thiết kế hiện có, bạn thường thực hiện với phần dễ trước. Tiếp đến sẽ là những phần quan trọng và phức tạp hơn - để phân tích kết quả kiểm thử người dùng, tìm ra những thứ cần loại bỏ và xem xét mức độ ảnh hưởng của các kết quả đó đối với thiết kế hiện tại.

**Phân tích kết quả thử nghiệm người dùng ở giai đoạn đầu**

Giai đoạn đầu thường tiến hành thử nghiệm người dùng ở mức có kiểm soát. Kết quả thu được thường mang tính chủ quan, qua đó có thể hiểu được mong đợi và hành vi của người dùng và trên cơ sở đó để xây dụng thiết kế. Khi đã hiểu được các tính năng, các mẫu thiết kế, các lựa chọn điều hướng, sơ đồ icon, ưu iên về font chữ, nhãn, bạn có thể xây dựng khung cho toàn bộ quy trình thiết kế còn lại.

**Phân tích kết quả thử nghiệm người dùng ở giai đoạn sau**

Khi nghiên cứu kết quả thử nghiệm người dùng ở giai đoạn sau, bạn buộc phải tuân theo thuyết thiết kế đã xây dựng ở giai đoạn trước. Các thuyết đó theo dạng "chuyển đổi theo dòng UX" hoặc "Thẩm định CTA" trong các thiết kế màn hình. Ví dụ, bạn muốn biết có bao nhiêu người dùng đã bỏ đi khi đã chọn xong sản phẩm và đang chuẩn bị sang bước thanh toán. Hay có bao nhiêu người dùng đã click vào "Login" CTA so với phần còn lại của màn hình. 

Khi bạn hiểu được hành vi và mong đợi của người dùng, bạn sẽ có lựa chọn tốt hơn giữa thử nghiệm người dùng ở mức kiểm soát từ xa và không kiểm soát.

Công cụ kiểm thử tính khả dụng từ xa như Canvasflip có thể cung cấp rất nhiều thông tin hữu ích. 

**Biết được người dùng sẽ bỏ UX-flow từ chỗ nào**

Trong kênh chuyển đổi trên (được tạo ra với CanvasFlip.com), bạn có thể thấy được sừ rời bỏ lớn tại vòng lặp thứ 1 trong màn hình "Experiencies".

{% img center /images/2016/09/29/quy-trinh-chuyen-doi-hinh-pheu.png Quy trình chuyển đổi hình phễu %}


**Nơi người dùng tương tác nhiều nhất trong giao diện**

Một bản đồ nhiệt tương tác về thử nghiệm người dùng được tạo ra bởi CanvasFlip.com giúp bạn biết được khu vực tương tác thường xuyên của người dùng trong giao diện người dùng.

{% img center /images/2016/09/29/ban-do-nhiet-tuong-tac.png Bản đồ nhiệt tương tác %}


**Phân tích hành trình của từng cá nhân người dùng**

Với CanvasFlip.com, bạn có thể phân tích được những điều hướng của người dùng và thời gian người dùng ở lại mỗi màn hình.
{% img center /images/2016/09/29/hanh-trinh-cua-nguoi-dung.png Hành trình của người dùng %}

**Xem toàn bộ video phiên người dùng để phân tích và cải thiện hành vi người dùng**

Bạn có thể ghi lại các điều hướng người dùng, sau đó tìm ra nơi người dùng gặp vấn đề và tìm cách cải thiện trải nghiệm người dùng.
{% img center /images/2016/09/29/ghi-lai-dieu-huong-nguoi-dung.png Ghi lại điều hướng người dùng %}

Kết luận
=======
Với nỗ lực nhằm tạo ra một trải nghiệm người dùng tuyệt vời, cần phải tiến hành thử nghiệm người dùng và để thực hiện thử nghiệm hiệu quả, bạn phải biết cần gì/ sửa đổi gì, lựa chọn nhóm người dùng càng hẹp càng tốt, kiểm thử ngay từ lúc đầu, và sử dụng những thông tin hữu ích để rút ra kết luận từ kết quả thử nghiệm người dùng.



Bài dịch từ: [Everything you should know to conduct a kickass user testing](https://blog.prototypr.io/everything-you-should-know-to-conduct-a-kickass-user-testing-89977e653123#.shhsbhhoy)
 