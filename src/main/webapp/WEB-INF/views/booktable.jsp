<%@page import="com.model.userModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page isELIgnored="false" %>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
-->
<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <title>Blog store - Blog Category Bootstrap Responsive Website Template | Contact : W3layouts</title>

  <link href="//fonts.googleapis.com/css?family=Nunito:400,600,700,800&display=swap" rel="stylesheet">

  <!-- Template CSS -->
  <link rel="stylesheet" href="css/style-starter.css">

<style>
select
{
font-size:inherit;
font-family:inherit;
line-height:inherit;
overflow:visible;
width:300px;
height:40px;
 outline: 0px auto -webkit-focus-ring-color; 
 background-color: #efeff5; 
}

</style>

</head>
<%userModel u=(userModel)session.getAttribute("user"); 
int id=u.getId();%>
<body>


<!--header-->
<header id="site-header" class="fixed-top">
  <div class="container">
      <nav class="navbar navbar-expand-lg stroke p-0">
          <h1> <a class="navbar-brand" href="/">
                  <span class="fa fa-bell-o"></span> Blog Store
              </a></h1>
          <!-- if logo is image enable this   
  <a class="navbar-brand" href="#index.html">
      <img src="image-path" alt="Your logo" title="Your logo" style="height:35px;" />
  </a> -->
          <button class="navbar-toggler  collapsed bg-gradient" type="button" data-toggle="collapse"
              data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false"
              aria-label="Toggle navigation">
              <span class="navbar-toggler-icon fa icon-expand fa-bars"></span>
              <span class="navbar-toggler-icon fa icon-close fa-times"></span>
          </button>

           <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
              
              <ul class="navbar-nav ml-lg-5 mr-lg-auto">
                  <li class="nav-item @@home__active">
                      <a class="nav-link" href="menu">Menu</span></a>
                  </li>
                  <li class="nav-item active">
                      <a class="nav-link" href="booktable">Book a Table </a>
                  </li>
                  <li class="nav-item @@about__active">
                      <a class="nav-link" href="reviews">Reviews</a>
                  </li>
                  <li class="nav-item @@about__active">
                      <a class="nav-link" href="changebooking/<%=id%>">Change Booking</a>
                  </li>
              </ul>
              
              <div>
                     <ul class="navbar-nav ml-lg-5 mr-lg-auto">
                     <li class="nav-item @@home__active">
             			<a class="nav-link" href="feedback">Feedback</a></li>
             			<li class="nav-item @@home__active">
                      <a class="nav-link" href="logout">Logout</a></li>
             
              </ul>
              </div>      </nav>
  </div>
</header>
<!--/header-->

<!-- contacts -->
<section class="w3l-contact-7 pt-5" id="contact">
      
    <div class="contacts-9 pt-lg-5 pt-md-4">
    
        <div class="container">
            <div class="top-map">
            
                <div class="row map-content-9">
                
                    <div class="col-lg-8">
                    <br>
                            <h4 class="title-left mb-3">Please Select Your Booking Details</h4>
                <br>
                        <form action="bookatable" method="post" class="">
                            <div class="form-grid">
                            	<div class="input-field">
                                    <label> Select Date</label>
                                    <input type="date" name="date" id="w3lName" placeholder="" required="">
                                </div>
                            	<div class="input-field">
                                    <label> Select Guest</label><br>
                                    <select name="guest" style="border: none;" required="" >
                                     <option value="0" >0</option>
                                    <option value="2" >2</option>
  									<option value="3">3</option>
  									<option value="4" >4</option>
  									<option value="5" >5</option>
  									</select>
                                </div>
                                <div class="input-field">
                                    <label> Select Session</label><br>
                                    <select name="session" style="border: none;" required="" >
                                     <option value="breakfast" >BreakFast</option>
                                    <option value="lunch" >Lunch</option>
  									<option value="dinner">Dinner</option>
  									</select>
                                </div><br>
                            <h4 class="title-left mb-3">Guest Details</h4>
                <br>
                                <div class="input-field">
                                    <label> Your name</label>
                                    <input type="text" name="name" id="w3lName" placeholder="" required="" value="${u.id }">
                                </div>
                                <div class="input-field">
                                    <label> Your Email</label>
                                    <input type="email" name="email" id="w3lSender" placeholder="" required="">
                                </div>
                                <div class="input-field">
                                    <label> Your Phone</label>
                                    <input type="text" name="contact" id="w3lPhone" placeholder="" required="">
                                </div>
                                
                            </div>
                            <div class="input-field mt-4">
                                <label>Additional Information</label>
                                <textarea name="info" id="w3lMessage" placeholder=""></textarea>
                            </div>
                            <button type="submit" class="btn btn-primary btn-style mt-3">Book</button>
                        </form>
                    </div>
                    <div class="col-lg-4 cont-details">
                        <address>
                            <h5 class="">Our Office Address</h5>
                            <p><span class="fa fa-map-marker"></span>The blog business centre, 32, My Street,Kingston,
                                New York 12401United States </p>

                            <h5 class="mt-4 pt-lg-3">Phone informatiom</h5>
                            <p><span class="fa fa-mobile"></span> <strong>Phone :</strong>
                                <a href="tel:+1(12) 366 411 4999"> (+1) 366 411 499</a></p>

                            <p><span class="fa fa-phone"></span> <strong>Tel :</strong>
                                <a href="tel:+1(12) 366 411 4999"> (+1) 366 411 499</a></p>

                            <p> <span class="fa fa-envelope"></span> <strong>Email :</strong>
                                <a href="mailto:mail@example.com"> mail@example.com</a></p>

                            <h5 class="mt-4 pt-lg-3 mb-3">Feel free to contact us</h5>
                            <p>We want to provide you with a great experience which is why we want to hear from you.
                            .</p>
                        </address>
                    </div>
                </div>
            </div>
        </div>
        <div class="map mt-5">
            <iframe
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d387190.2895687731!2d-74.26055986835598!3d40.697668402590374!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew+York%2C+NY%2C+USA!5e0!3m2!1sen!2sin!4v1562582305883!5m2!1sen!2sin"
                frameborder="0" style="border:0" allowfullscreen=""></iframe>
        </div>
    </div>
</section>
<!-- //contacts -->
  <!-- footer -->
  <footer class="py-5">
    <div class="container pt-md-5">
      <div class="footer-logo mb-lg-5 mb-4 text-center">
        <a class="navbar-brand" href="index.html"><span class="fa fa-bell-o"></span> Shija Restaurant</a>
        <p>We want to provide you with a great experience. Your feedback helps us
          bring you more of the events you love and the service you expect.</p>
      </div>
      
    </div>
  </footer>
  <!-- footer -->

  <!-- move top -->
  <button onclick="topFunction()" id="movetop" title="Go to top">
    &#10548;
  </button>
  <script>
    // When the user scrolls down 20px from the top of the document, show the button
    window.onscroll = function () {
      scrollFunction()
    };

    function scrollFunction() {
      if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        document.getElementById("movetop").style.display = "block";
      } else {
        document.getElementById("movetop").style.display = "none";
      }
    }

    // When the user clicks on the button, scroll to the top of the document
    function topFunction() {
      document.body.scrollTop = 0;
      document.documentElement.scrollTop = 0;
    }
  </script>
  <!-- /move top -->

  <script src="js/theme-change.js"></script><!-- theme switch js (light and dark)-->

  <script src="js/jquery-3.3.1.min.js"></script><!-- default jQuery -->

  <script src="https://kit.fontawesome.com/af562a2a63.js" crossorigin="anonymous"></script>

  <!-- owlcarousel -->
  <script src="js/owl.carousel.js"></script>
  <!-- script for banner typing text -->
  <script>
    function autoType(elementClass, typingSpeed) {
      var thhis = $(elementClass);
      thhis.css({
        "position": "relative",
        "display": "inline-block"
      });
      thhis.prepend('<div class="cursor" style="right: initial; left:0;"></div>');
      thhis = thhis.find(".text-js");
      var text = thhis.text().trim().split('');
      var amntOfChars = text.length;
      var newString = "";
      thhis.text("|");
      setTimeout(function () {
        thhis.css("opacity", 1);
        thhis.prev().removeAttr("style");
        thhis.text("");
        for (var i = 0; i < amntOfChars; i++) {
          (function (i, char) {
            setTimeout(function () {
              newString += char;
              thhis.text(newString);
            }, i * typingSpeed);
          })(i + 1, text[i]);
        }
      }, 1500);
    }

    $(document).ready(function () {
      // Now to start autoTyping just call the autoType function with the 
      // class of outer div
      // The second paramter is the speed between each letter is typed.   
      autoType(".type-js", 200);
    });
  </script>
  <!-- //script for banner typing text -->

  <!-- script for carousel slider -->
  <script>
    $(document).ready(function () {
      $("#owl-demo1").owlCarousel({
        loop: true,
        nav: false,
        margin: 30,
        responsiveClass: true,
        responsive: {
          0: {
            items: 1,
            nav: false
          },
          767: {
            items: 2,
            nav: false
          },
          992: {
            items: 4,
            nav: false
          }
        }
      })
    })
  </script>
  <!-- //script for carousel slider -->

  <!-- disable body scroll which navbar is in active -->
  <script>
    $(function () {
      $('.navbar-toggler').click(function () {
        $('body').toggleClass('noscroll');
      })
    });
  </script>
  <!-- disable body scroll which navbar is in active -->

  <!--/MENU-JS-->
  <script>
    $(window).on("scroll", function () {
      var scroll = $(window).scrollTop();

      if (scroll >= 80) {
        $("#site-header").addClass("nav-fixed");
      } else {
        $("#site-header").removeClass("nav-fixed");
      }
    });

    //Main navigation Active Class Add Remove
    $(".navbar-toggler").on("click", function () {
      $("header").toggleClass("active");
    });
    $(document).on("ready", function () {
      if ($(window).width() > 991) {
        $("header").removeClass("active");
      }
      $(window).on("resize", function () {
        if ($(window).width() > 991) {
          $("header").removeClass("active");
        }
      });
    });
  </script>
  <!--//MENU-JS-->

  <!-- bootstrap js -->
  <script src="js/bootstrap.min.js"></script>

  </body>

  </html>