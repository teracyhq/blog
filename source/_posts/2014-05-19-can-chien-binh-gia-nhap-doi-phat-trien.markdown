---
layout: post
title: Cần chiến binh gia nhập đội phát triển
author: hoatle
editor: ngocnguyen
date: 2014-05-19 15:46
comments: true
categories:
    - "vi"
tags:
    - "tuyển dụng"
cover: /images/2014/05/teracy_recruitment_poster.jpg
description: Teracy cần tuyển chiến binh gia nhập đội phát triển
keywords: tuyển dụng, chiến binh, phát triển, Teracy
published: true
---

{% img center /images/2014/05/teracy_recruitment_poster.jpg %}

Sau gần một năm startup, Teracy cần tìm "chiến binh" gia nhập đội phát triển.

Công việc sẽ là gia công phần mềm cho khách hàng, khách hàng hầu hết là các công ty Mỹ vì làm việc
với họ rất tốt.

Teracy có 2 mảng là gia công phần mềm và nghiên cứu phát triển, hiện tại tập trung phát triển mảng gia
công phần mềm trước để lấy ngắn (nguồn lực, vốn) nuôi dài (nghiên cứu, phát triển).

Về mảng nghiên cứu, phát triển bạn sẽ được tiếp cận dần dần, nhưng trước mắt bạn cần phải là chiến
binh để gia công phần mềm trước đã.

<!-- more -->


Tại sao lại là chiến binh?
--------------------------

- Vì bạn phải chiến đấu, tất nhiên là chiến đấu với những yêu cầu khá trừu tượng của khách hàng để
hoàn thành nhiệm vụ được giao (có sự trợ giúp và code review từ các đồng nghiệp)

- Vì bạn sẽ phải chịu rất nhiều áp lực

- Vì bạn không thể chọn làm những việc chỉ mình bạn thích, bạn cần làm cả những việc khách hàng yêu
  cầu

- Vì bạn sẽ phải làm nhiều việc khác nhau, cả sở trường lẫn sở đoản, sở đoản thì phải biến nó thành
sở trường trong thời gian ngắn (học kỹ năng mới)



Bạn cần gì?
-----------

- 1 chiếc laptop có thể làm việc được, ưu tiên Mac, Linux.

- Có kết nối Internet

- Cầu tiến, không bao giờ ngừng học hỏi

- Có kỹ năng làm được việc (yêu cầu cụ thể bên dưới)

- Làm việc nhóm tốt (nhận việc từ xa, giao tiếp từ xa.v.v...)


Những kỹ năng cần thiết?
------------------------

- Làm khá tốt với JavaScript là yêu cầu bắt buộc (Nắm rõ OOP, Scope, Closure, etc.)

- Làm việc tốt với Git là yêu cầu bắt buộc (Bắt buộc sử dụng command line và biết sử dụng những lệnh
  sau http://dev.teracy.org/docs/most_used_git_commands.html)

- Tiếng Anh khá tốt là yêu cầu bắt buộc

- Biết 1 chút mà muốn làm việc với Python là một lợi thế

- Biết làm 1 chút HTML/CSS là một lợi thế

- Tự quản lý thời gian của mình, không bó buộc không gian, thời gian làm việc miễn hoành thành
  nhiệm vụ đã cam kết đúng thời hạn

- Khiến khách hàng luôn hài lòng là ưu tiên hàng đầu ("deliver more than you can promise.")



Ví dụ những công việc cụ thể điển hình?
---------------------------------------

-  Viết chrome extension hiện chỉ số cổ phiếu thay đổi theo thời gian 1 giây (dữ liệu giả do bạn
   tạo và chạy ngẫu nhiên)

-  Viết Notify component và notify service cho reactjs dùng twitter bootstrap alert component,
   viết trong 8h (với giả sử bạn chưa biết gì về reactjs)

-  Có 2 nút "Next" và "Previous" cho Image Slider, bình thường click vào những nút này sẽ hiển thị
   ảnh tiếp theo hoặc trước đó. Yêu cầu là khi nhấn giữ chuột lâu các nút này thì các ảnh tự nhảy,
   càng nhấn giữ lâu thì ảnh nhảy càng nhanh. (làm trong vòng 12h để tích hợp vào backbone
   application hiện có)

-  Dùng CollectionView của Chaplin để quản lý các views trong backbone application

-  Fix failing tests of a Django application and improve it

-  Xây dựng gulp build system cho ứng dụng web để compile reactjs (.jsx) thành (.js), đóng gói ứng
   dùng thành các bản phân phối cho chrome extension, web

-  Convert code HTML/CSS hiện có đang viết rất dở, dùng jquery-ui, chuyển sang dùng twitter bootstrap

-  2 way data-binding for backbone model and view

-  Bạn có 2 iframe trong 1 trang web, làm thế nào để truyền lệnh từ iframe này qua iframe kia?

-  Chọn 1 vùng hình chữ nhật trên 1 canvas và làm mở 1 phần được chọn đó.

-  Hãy implement eyedropper cho 1 canvas element?

-  Implement class `Settings` theo spec docs sau:

```
  /**
   * Settings class to support json deep model setting.
   *
   * For example:
   *
   * var settings = new Settings({
   *   env: 'dev',
   *   payment: {
   *     method: 'paypal'
   *   }
   * });
   *
   * var env = settings.get('env');
   * var paymentMethod = settings.get('payment.method');
   *
   * settings.set('payment', {
   *   method: 'stripe',
   *   activated: false
   * }, true);
   *
   * var paymentActivated = settings.get('payment.activated');
   *
   * key must be valid javascript identifier and does not contain ".".
   *
   * @constructor
   */
  function Settings() {
    //TODO: implement this
  }

  //supported methods


  /**
   * Gets setting by key, if the key does not exist:
   * + throw Error
   *
   * + If default def is provided and key does not exist, return def.
   *
   * @param key the specified key
   * @param def the default value if key is not found
   */
  Settings.prototype.get = function(key, def) {
    //TODO: implement this
  }

  /**
   * Sets new key
   *
   * by default, does not allow overwrite existing key.
   *
   * if overwrite existing key without forcing, throw Error.
   *
   * @param key
   * @param value
   * @param force
   */
  Settings.prototype.set = function(key, value, force) {
    //TODO: implement this
  }

  /**
   * Checks if a key is valid or not.
   *
   * key must be valid javascript identifier and does not contain "."
   *
   * @param key
   */
  Settings.prototype.isValidKey = function(key) {
    //TODO: implement this
  }
```

-  Hãy implement `template` function theo spec docs sau:

```
/**
 * Creates a compile template function to construct parsed string from string template and params object.
 *
 * var compileTemplate = template(strTemplate);
 * var parsedString = compileTemplate(params, [strict]);
 *
 * params is required otherwise error will be thrown.
 *
 * By default, strict is true and if there is any missing params key for strTemplate then
 * an error will be thrown.
 *
 * If params has unused keys in strTemplate, that keys will be ignored.
 *
 * If strict is false then parsedString will be returned with missing keys.
 *
 * Note: template key must match: \w+
 *
 * For example:
 *
 * var helloTemplate = template('Hello {{name}}!'),
 *     urlTemplate = template('/{{resource}}/{{id}}.json');
 *
 * var output = helloTemplate({name: 'World'}); // => Hello World!
 *
 * helloTemplate(); // => error is thrown
 * helloTemplate({}); // => error is thrown
 *
 * var output2 = helloTemplate({}, false); // => Hello {{name}}!
 *
 * var userUrl = urlTemplate({resource: 'users', id: 1}); // => /users/1.json
 *
 * var pricesTemplate = template('/prices?marketplace={{marketplace}}&&num_results={{num_result}}&&since={{since}}', {
 *   defaults: {
 *     num_result: 80
 *   },
 *   processors: {
 *     since: function(processedStr, paramValue, params) {
 *       if (_.isUndefined(paramValue)) {
 *         processedStr = processStr.replace('&&since={{since}}', '');
 *       }
 *       return processedStr;
 *     }
 *   }
 * });
 *
 * pricesTemplate({marketplace: 'mtgox'}); => /prices/marketplace=mtgox&&num_results=80
 *
 * @param str the string template
 * @param options the optional options
 * @return a compiled template function
 */

 function template(str, opts) {
  //TODO: implement this
 }
```

- v.v...


Bạn được những gì?
------------------

- Lương cạnh tranh, nếu làm trung bình khá thì ít nhất 1 tháng bạn được trả $700/tháng (lương phụ
  thuộc vào khả năng của bạn)

- Có cơ hội góp vốn, cổ phần

- Rèn luyện bản thân vì đây là công việc không phải dành cho tất cả mọi người, chỉ dành cho những
  chiến binh và biết chiến đấu thật tốt

- Được tham gia làm việc nhóm với nhiều loại công việc thú vị khác nhau

- Có nhiều chế độ hỗ trợ thêm như: hỗ trợ bữa ăn (1 bữa với part-time, 2 bữa với full-time; hỗ trợ
  và khuyến khích các hoạt động thể thao; hỗ trợ làm từ xa...)


Bạn ứng tuyển thế nào?
----------------------

Nhiều công việc thú vị, thử thách đang chờ bạn. Hãy liên lạc ngay với Teracy, mọi liên lạc hãy
gửi về: **hr at teracy dot com** với:

- 1 bản CV đầy đủ của bạn

- Bạn nghĩ gì về những công việc cụ thể điển hình trên?


Cảm ơn bạn đã quan tâm!
