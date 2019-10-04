import $ from 'jquery'

export function custom() {
  $(document).ready(function () {

    /*======= Equel Height Start ========*/

    function equalheight(container) {

      var currentTallest = 0,
        currentRowStart = 0,
        rowDivs = new Array(),
        $el,
        topPosition = 0,
        currentDiv = 0;
      $(container).each(function () {

        $el = $(this);
        $($el).height('auto')
        topPosition = $el.position().top;

        if (currentRowStart !== topPosition) {
          for (currentDiv = 0; currentDiv < rowDivs.length; currentDiv++) {
            rowDivs[currentDiv].height(currentTallest);
          }
          rowDivs.length = 0; // empty the array
          currentRowStart = topPosition;
          currentTallest = $el.height();
          rowDivs.push($el);
        } else {
          rowDivs.push($el);
          currentTallest = (currentTallest < $el.height()) ? ($el.height()) : (currentTallest);
        }
        for (currentDiv = 0; currentDiv < rowDivs.length; currentDiv++) {
          rowDivs[currentDiv].height(currentTallest);
        }
      });
    }

    $(window).on('load', function () {
      setTimeout(function() {
        equalheight('.desk_dwn .inner_drpdwn li a, #blog .col_blog .inner_col_blog, .search_tab_cnt li .people_block');
      }, 5000);
    })

    $(window).on('load', function () {
      equalheight('.desk_dwn .inner_drpdwn li a, #blog .col_blog .inner_col_blog, .search_tab_cnt li .people_block');
    })
    
    $(window).resize(function () {
      equalheight('.desk_dwn .inner_drpdwn li a,#blog .col_blog .inner_col_blog,.search_tab_cnt li .people_block');
    });

    /*======= Equal Height Start  ========*/


    /*======= Mega Menu Hover Jquery Start Here  ========*/
    $(document).on('mouseenter', '.custom_nav .inner_navbar > ul > li', function () {
      if ($(this).hasClass('active')) {
        $(this).removeClass("active").children(".desk_dwn").hide();
      } else {
        $(".custom_nav .inner_navbar > ul > li").removeClass("active");
        $(".desk_dwn").hide();
        $(this).addClass("active");
        $(this).children(".desk_dwn").show();
        equalheight('.desk_dwn .inner_drpdwn li a');
      }
    });
    $(document).on('mouseleave', '.custom_nav .inner_navbar > ul > li', function () {
      if ($(this).hasClass('active')) {
        $(this).removeClass("active").children(".desk_dwn").hide();
      } else {
        //$(".custom_nav .inner_navbar > ul > li").removeClass("active");
        //$(".desk_dwn").hide();
        //$(this).addClass("active");
        $(this).children(".desk_dwn").show();
        equalheight('.desk_dwn .inner_drpdwn li a');
      }
    });

    $(document).on('mouseenter', '.custom_nav .inner_navbar > ul > li .desk_dwn .inner_drpdwn > ul > li', function () {
      if ($(this).hasClass('active')) {
        $(this).removeClass("active");
      } else {
        $(".custom_nav .inner_navbar > ul > li .desk_dwn .inner_drpdwn > ul > li").removeClass("active");
        $('.custom_nav .inner_navbar > ul > li').removeClass("active");
        $(".custom_nav .inner_navbar > ul > li .desk_dwn").hide();
        $(this).addClass("active");
      }
    });
    $(document).on('mouseleave', '.custom_nav .inner_navbar > ul > li .desk_dwn .inner_drpdwn > ul > li', function () {
      if ($(this).hasClass('active')) {
        $(this).removeClass("active");
      } else {
        $(".custom_nav .inner_navbar > ul > li .desk_dwn .inner_drpdwn > ul > li").removeClass("active");
        $('.custom_nav .inner_navbar > ul > li').removeClass("active");
        $(".custom_nav .inner_navbar > ul > li .desk_dwn").hide();
        $(this).addClass("active");
      }
    });

    $(document).on('mouseleave', '.custom_nav .inner_navbar', function () {
      $(".custom_nav .inner_navbar > ul > li .desk_dwn").hide();
    });


    /*=======  Mega Menu Hover Jquery End Here ========*/


    /*======= Desktop Search Start ========*/




    /*======= Desktop Search End ========*/


    /*======= Mega-Menu and Responsive Start ========*/

    if ($(window).width() > 1199) {
      $(".custom_nav .inner_navbar").hover(function (e) {
        if ($(".custom_nav .inner_navbar").hasClass("search_open")) {

        } else {
          $("#drp_dwn").slideToggle();
          equalheight('#drp_dwn .inner_drpdwn li a');
          $(".search_desk").slideUp();
        }
      });
    } else {
      $("#mobile-menu-toggle").click(function (e) {
        $(this).toggleClass("open");
        $(".custom_nav").slideToggle();
        equalheight('.desk_dwn.mobile_dwn .inner_drpdwn li a');
      });

    }

    /*======= Mega-Menu and Responsive End ========*/


    /*======= User Login Start ========*/

    $(".user_list .user_profile").before('<span class="close_user" ></span>');
    $(".main_header .user_login > a").click(function (e) {
      $("body").addClass("open")
      $(this).hide();
    });
    $(".user_list .close_user").click(function (e) {
      $("body").removeClass("open")
      $(".main_header .user_login > a").show();
    });

    /*======= User Login End ========*/


    /*======= Input Value Check Jquery Start ========*/

    function checkForInput(element) {

      if ($(element).val().length > 0) {
        $(".inner_drpdwn").addClass('input-has-value');
        $(".desk_dwn.mobile_dwn .inner_drpdwn ul").slideUp();
      } else {
        $(".inner_drpdwn").removeClass('input-has-value');
        $(".desk_dwn.mobile_dwn .inner_drpdwn ul").slideDown();
      }
    }

    // The lines below are executed on page load
    $('.desk_dwn.mobile_dwn .mobile_search .search_input').each(function () {
      checkForInput(this);
    });

    $('.desk_dwn.mobile_dwn .mobile_search .search_input').on('change keyup', function () {
      checkForInput(this);
    });

    /*======= Input Value Check Jquery End ========*/

    /*======= Lover Slider Jquery Start ========*/
    /*$('#morelove_product .inner_morelove ul').slick({
      dots: false,
      infinite: false,
      speed: 300,
      slidesToShow: 4,
      slidesToScroll: 1,
      responsive: [{
          breakpoint: 1024,
          settings: {
            slidesToShow: 2,
            slidesToScroll: 1,
            infinite: true,
            dots: false
          }
        },
        {
          breakpoint: 600,
          settings: {
            slidesToShow: 2,
            slidesToScroll: 1
          }
        },
        {
          breakpoint: 480,
          settings: {
            slidesToShow: 1,
            slidesToScroll: 1
          }
        }
      ]
    });*/

    /*======= Lover Slider Jquery End ========*/


    /*======= Post Slider Jquery Start ========*/
    /*$('#post_dtls .post_slider ul').slick({
      dots: false,
      infinite: false,
      speed: 300,
      slidesToShow: 4,
      slidesToScroll: 1,
      responsive: [{
          breakpoint: 1024,
          settings: {
            slidesToShow: 3,
            slidesToScroll: 1,
            infinite: true,
            dots: false
          }
        },
        {
          breakpoint: 600,
          settings: {
            slidesToShow: 3,
            slidesToScroll: 1
          }
        },
        {
          breakpoint: 480,
          settings: {
            slidesToShow: 1,
            slidesToScroll: 1
          }
        }
        // You can unslick at a given breakpoint now by adding:
        // settings: "unslick"
        // instead of a settings object
      ]
    });*/

    /*======= Post Slider Jquery End ========*/



    /*======= Post Slider toggle Jquery Start ========*/
    var options = {
      dots: false,
      infinite: false,
      speed: 300,
      slidesToShow: 4,
      slidesToScroll: 1,
      responsive: [{
          breakpoint: 1024,
          settings: {
            slidesToShow: 3,
            slidesToScroll: 1,
            infinite: true,
            dots: false
          }
        },
        {
          breakpoint: 600,
          settings: {
            slidesToShow: 3,
            slidesToScroll: 1
          }
        },
        {
          breakpoint: 480,
          settings: {
            slidesToShow: 1,
            slidesToScroll: 1
          }
        }
        // You can unslick at a given breakpoint now by adding:
        // settings: "unslick"
        // instead of a settings object
      ]
    }

  /*$(document).on('click', '#post_dtls .see_post h3.title', function () {
      $(this).toggleClass("open")
      $("#post_dtls .toggle_slider").slideToggle();
      $('#post_dtls .post_slider ul').slick('unslick');
      $('#post_dtls .post_slider ul').slick(options);
    });*/


    // $("#post_dtls .see_post h3.title").on('click','h3',function() {
    //   //alert('yes');
    //   $(this).toggleClass("open")
    //   $("#post_dtls .toggle_slider").slideToggle();
    //   $('#post_dtls .post_slider ul').slick('unslick');
    //   $('#post_dtls .post_slider ul').slick(options);
    // });
    $('#post_dtls .post_slider ul').on('init', function () {
      //$('#post_dtls .post_slider ul').css("visibility", "visible");
      // $('.slick-initialized').css("visibility", "visible");
    });
    /*======= Post Slider toggle Jquery End ========*/

    /*======= Post Banner Slider  Jquery Start ========*/

    /*$('#post_dtls.thespread .image_block.sliders ul').slick({
      dots: true,
      infinite: true,
      speed: 300,
      slidesToShow: 1,
      adaptiveHeight: true
    });*/

    /*======= Post Banner Slider toggle Jquery End ========*/

    /*======= Window Height Jquery Start ========*/
    var win_height = $(window).outerHeight();
    $("#user_login").css("min-height", win_height);
    $(window).resize(function () {
      var win_height = $(window).outerHeight();
      $("#user_login").css("min-height", win_height);
    });
    /*======= Window Height Jquery End ========*/

  });
}