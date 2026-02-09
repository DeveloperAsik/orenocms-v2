/* https://github.com/DiemenDesign/summernote-paper-size */
(function (factory) {
    if (typeof define === 'function' && define.amd) {
        define(['jquery'], factory);
    } else if (typeof module === 'object' && module.exports) {
        module.exports = factory(require('jquery'));
    } else {
        factory(window.jQuery);
    }
}(function ($) {
    $.extend(true, $.summernote.lang, {
        'en-US': {
            paperSize: {
                tooltip: 'Paper Size'
            }
        }
    });
    $.extend($.summernote.options, {
        paperSize: {
            icon: '<i class="note-icon"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 14 14" width="12" height="12"><path d="M 7.5194922,8.03901 5.9609687,6.48048 3.8757344,8.56572 2.4693906,7.15937 l 0,4.37124 4.3712344,0 -1.4063437,-1.40637 2.0852109,-2.08523 z m -4.3154063,2.7569 0,-1.86283 0.6716719,0.67167 2.0852344,-2.08523 0.5194922,0.51949 -2.0852344,2.08523 0.6716484,0.67165 -1.8628125,0 z M 7.159375,2.46939 8.5657187,3.87576 6.4804844,5.96099 l 1.5585,1.5585 2.0852346,-2.08523 1.406367,1.40634 0,-4.37121 -4.371211,0 z M 10.795914,5.06692 10.124242,4.39525 8.0390078,6.48048 7.5195156,5.96099 9.60475,3.87576 8.9331016,3.20411 l 1.8628354,0 0,1.86281 z M 1,1 1,13 13,13 13,1 1,1 Z m 11.265305,11.2653 -10.5306097,0 0,-10.5306 10.5306097,0 0,10.5306 z"/></svg></i> ',
            menu: [
                'Clear',
                'A0-L',
                'A1-L',
                'A2-L',
                'A3-L',
                'A4-L',
                'A5-L',
                'F4-L',
                'legal-L',
                'A0',
                'A1',
                'A2',
                'A3',
                'A4',
                'A5',
                'F4',
                'legal'
            ]
        }
    });
    $.extend($.summernote.plugins, {
        'paperSize': function (context) {
            var ui = $.summernote.ui,
                    $note = context.layoutInfo.note,
                    options = context.options,
                    lang = options.langInfo;
            $('<link/>', {
                rel: 'stylesheet',
                type: 'text/css',
                href: _base_assets_url + '/templates/adminlte/plugins/summernote/plugin/summernote-paper-size-master/css/css.css'
            }).appendTo('head');
            context.memo('button.paperSize', function () {
                var button = ui.buttonGroup([
                    ui.button({
                        className: 'dropdown-toggle',
                        contents: options.paperSize.icon,
                        tooltip: lang.paperSize.tooltip,
                        container: 'body',
                        data: {
                            toggle: 'dropdown'
                        }
                    }),
                    ui.dropdown({
                        className: 'dropdown-template',
                        items: options.paperSize.menu,
                        click: function (e) {
                            var $button = $(e.target);
                            var value = $button.data('value');
                            e.preventDefault();
                            $('.note-frame').removeClass('note-document');
                            $('.note-editing-area').removeClass('a0').removeClass('a1').removeClass('a2').removeClass('a3').removeClass('a4').removeClass('a5');
                            switch (value) {
                                case 'A0-L':
                                    $('.note-frame').addClass('note-document');
                                    $('.note-editing-area').addClass('a0-l');
                                    $('.note-editable').css({'width': '4493.8px', 'height': '3178.5px', 'border': '1px solid #ccc'}); // height:3370
                                    break;
                                case 'A1':
                                    $('.note-frame').addClass('note-document');
                                    $('.note-editing-area').addClass('a1-l');
                                    $('.note-editable').css({'width': '3178.5px', 'height': '2245px', 'border': '1px solid #ccc'}); // height:2384
                                    break;
                                case 'A2-L':
                                    $('.note-frame').addClass('note-document');
                                    $('.note-editing-area').addClass('a2-l');
                                    $('.note-editable').css({'width': '2245px', 'height': '1587.4px', 'border': '1px solid #ccc'}); // height:1684
                                    break;
                                case 'A3-L':
                                    $('.note-frame').addClass('note-document');
                                    $('.note-editing-area').addClass('a3-l');
                                    $('.note-editable').css({'width': '1587.4px', 'height': '1122.5px', 'border': '1px solid #ccc'}); // height:1191
                                    break;
                                case 'A4-L':
                                    $('.note-frame').addClass('note-document');
                                    $('.note-editing-area').addClass('a4-l');
                                    $('.note-editable').css({'width': '1122.5px', 'height': '793.7px', 'border': '1px solid #ccc', 'padding': '2.5cm 2cm 1.2cm 2.5cm', 'background-image': 'linear-gradient(to bottom, rgba(250, 250, 250, 1) 0%, rgba(250, 250, 250, 1) 100%), linear-gradient(to bottom, rgba(246, 246, 246, 1) 0%, rgba(246, 246, 246, 1) 100%)', 'background-clip': 'content-box, padding-box'}); // height:842
                                    break;
                                case 'A5-L':
                                    $('.note-frame').addClass('note-document');
                                    $('.note-editing-area').addClass('a5-l');
                                    $('.note-editable').css({'width': '793.7px', 'height': '559.3px', 'border': '1px solid #ccc'}); // height:595
                                    break;
                                case 'F4-L':
                                    $('.note-frame').addClass('note-document');
                                    $('.note-editing-area').addClass('f4-l');
                                    $('.note-editable').css({'width': '12472.4px', 'height': '812.59px', 'border': '1px solid #ccc'}); // height:595
                                    break;
                                case 'legal-L':
                                    $('.note-frame').addClass('note-document');
                                    $('.note-editing-area').addClass('legal-l');
                                    $('.note-editable').css({'width': '1268.4px', 'height': '816px', 'border': '1px solid #ccc'}); // height:595
                                    break;

                                case 'A0':
                                    $('.note-frame').addClass('note-document');
                                    $('.note-editing-area').addClass('a0');
                                    $('.note-editable').css({'width': '3178.5px', 'height': '4493.8px', 'border': '1px solid #ccc'}); // height:3370
                                    break;
                                case 'A1':
                                    $('.note-frame').addClass('note-document');
                                    $('.note-editing-area').addClass('a1');
                                    $('.note-editable').css({'width': '2245px', 'height': '3178.5px', 'border': '1px solid #ccc'}); // height:2384
                                    break;
                                case 'A2':
                                    $('.note-frame').addClass('note-document');
                                    $('.note-editing-area').addClass('a2');
                                    $('.note-editable').css({'width': '1587.4px', 'height': '2245px', 'border': '1px solid #ccc'}); // height:1684
                                    break;
                                case 'A3':
                                    $('.note-frame').addClass('note-document');
                                    $('.note-editing-area').addClass('a3');
                                    $('.note-editable').css({'width': '1122.5px', 'height': '1587.4px', 'border': '1px solid #ccc'}); // height:1191
                                    break;
                                case 'A4':
                                    $('.note-frame').addClass('note-document');
                                    $('.note-editing-area').addClass('a4');
                                    $('.note-editable').css({'width': '793.7px', 'height': '1122.5px', 'border': '1px solid #ccc', 'padding': '3.3cm 2cm 1.2cm 2.5cm', 'background-image': 'linear-gradient(to bottom, rgba(250, 250, 250, 1) 0%, rgba(250, 250, 250, 1) 100%), linear-gradient(to bottom, rgba(246, 246, 246, 1) 0%, rgba(246, 246, 246, 1) 100%)', 'background-clip': 'content-box, padding-box'}); // height:842
                                    break;
                                case 'A5':
                                    $('.note-frame').addClass('note-document');
                                    $('.note-editing-area').addClass('a5');
                                    $('.note-editable').css({'width': '559.3px', 'height': '793.7px', 'border': '1px solid #ccc'}); // height:595
                                    break;
                                case 'F4':
                                    $('.note-frame').addClass('note-document');
                                    $('.note-editing-area').addClass('f4');
                                    $('.note-editable').css({'width': '812.59px', 'height': '12472.4px', 'border': '1px solid #ccc'}); // height:595
                                    break;
                                case 'legal':
                                    $('.note-frame').addClass('note-document');
                                    $('.note-editing-area').addClass('legal');
                                    $('.note-editable').css({'width': '816px', 'height': '1268.4px', 'border': '1px solid #ccc'}); // height:595
                                    break;
                                default:
                                    $('.note-frame').removeClass('note-document');
                                    $('.note-editing-area').removeClass('a0').removeClass('a1').removeClass('a2').removeClass('a3').removeClass('a4').removeClass('a5').removeClass('f4').removeClass('legal');
                                    $('.note-editing-area').removeClass('a0-l').removeClass('a1-l').removeClass('a2-l').removeClass('a3-l').removeClass('a4-l').removeClass('a5-l').removeClass('f4-l').removeClass('legal-l');
                                    $('.note-editable').css({'width': '100%'});
                            }
                        }
                    })
                ]);
                return button.render();
            });
        }
    });
}));
