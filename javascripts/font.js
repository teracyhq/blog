/**
 * We had font problem for Vietnamese characters
 * so in case of Vietnamese articles on windows + on Chrome browser v52.0.2743.116
 * => remove Georgia from font-family on headers (h1, h2) and paragraphs (p)
 */
(function () {

    var os = (function() {
        var ua = navigator.userAgent.toLowerCase();
        return {
            isWin2K: /windows nt 5.0/.test(ua),
            isXP: /windows nt 5.1/.test(ua),
            isVista: /windows nt 6.0/.test(ua),
            isWin7: /windows nt 6.1/.test(ua),
            isWin8: /windows nt 6.2/.test(ua),
            isWin81: /windows nt 6.3/.test(ua),
            isWin10: /windows nt 10.0/.test(ua)
        };
    }());

    var isWindow = os.isWin2K || os.isXP || os.isVista || os.isWin7 || os.isWin8 || os.isWin81 ||
                   os.isWin10;

    function isEnglish(text) {
        return !(/[^\x00-\x7F]+/.test(text));
    }

    var CONTENT_FONT = '"PT Serif", Times, "Times New Roman", serif';
    var HEADING_FONT = '"PT Serif", "Helvetica Neue", Arial, sans-serif';

    $(document).ready(function () {
        var title = $('.entry-title').text();

        if (isWindow && !isEnglish(title) && $.browser.chrome && $.browser.version === '52.0.2743.116') {
            $('body').css('font-family', CONTENT_FONT);
            $('article h1, article h2').css('font-family', HEADING_FONT);
        }
    });

})();
