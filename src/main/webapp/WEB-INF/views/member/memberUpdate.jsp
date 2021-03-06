<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required Meta Tags -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <!-- Page Title -->
    <title>Blog Details</title>

    <!-- Favicon -->
    <link rel="shortcut icon" href="../resources/images/logo/favicon.png" type="image/x-icon">

    <!-- CSS Files -->
    <link rel="stylesheet" href="../resources/css/animate-3.7.0.css">
    <link rel="stylesheet" href="../resources/css/font-awesome-4.7.0.min.css">
    <link rel="stylesheet" href="../resources/css/bootstrap-4.1.3.min.css">
    <link rel="stylesheet" href="../resources/css/owl-carousel.min.css">
    <link rel="stylesheet" href="../resources/css/style.css">
    <link rel="stylesheet" href="../resources/css/member/member.css">
</head>
<body>
    <!-- Preloader Starts -->
    <div class="preloader">
        <div class="spinner"></div>
    </div>
    <!-- Preloader End -->

    <!-- Header Area Starts -->
	<header class="header-area header-area2">
        <div class="container">
            <div class="row">
                <div class="col-lg-2">
                    <div class="logo-area">
                        <a href="index.html"><img src="../resources/images/logo/logo2.png" alt="logo"></a>
                    </div>
                </div>
                <div class="col-lg-10">
                    <div class="custom-navbar">
                        <span></span>
                        <span></span>
                        <span></span>
                    </div>  
                    <div class="main-menu main-menu2">
                        <ul>
                            <li class="active"><a href="index.html">home</a></li>
                            <li><a href="about.html">about</a></li>
                            <li><a href="menu.html">menu</a></li>
                            <li><a href="#">blog</a>
                                <ul class="sub-menu">
                                    <li><a href="blog-home.html">Blog Home</a></li>
                                    <li><a href="blog-details.html">Blog Details</a></li>
                                </ul>
                            </li>
                            <li><a href="contact-us.html">contact</a></li>
                            <li><a href="elements.html">Elements</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- Header Area End -->

    <!-- Banner Area Starts -->
       <section class="banner-area banner-area2 blog-page text-center" >
        <div class="container" >
            <div class="row">
                <div class="col-lg-12">
                    <h1><i>Our Blog</i></h1>
                    <a href="index.html">home</a>
                    <span class="mx-2">/</span>
                    <a href="blog-details.html">blog details</a>
                </div>
            </div>
        </div>
    </section>
    <!-- Banner Area End -->
    
    <!--================Blog Area =================-->
                    <div class="comments-area " id= "upd_area" >
                        <h4>My page</h4>
                     <form action="./memberUpdate" method="post">
                        <div class="comment-list">
                            <div class="single-comment justify-content-between d-flex">
                                <div class="user justify-content-between d-flex">
                                    <div class="thumb">
                                        <img src="../resources/images/blog-details/c1.jpg" alt="">
                                    </div>
                                    <div class="desc">
                                       <h5><p>Id</p></h5>                                     
                                        <p class="comment">
                                            	${member.id}
                                        </p>                                                                               	                                                                   
                                    </div>
                                </div>                           
                            </div>
                        <div class = "desc" id = "etc">
                        	 <p class="date"></p>                
                        </div>                                                                                                                                                            
                        </div>	   
                        <div class="comment-list left-padding">
                            <div class="single-comment justify-content-between d-flex">
                                <div class="user justify-content-between d-flex">                                  
                                    <div class="desc">
                                        <h5><p>Password</p></h5>                                                                                                     
                                            <input type="password" id= "pw" name = "pw" value ="${member.pw}"  class="form-control upd_input" placeholder="${member.pw}" onfocus="this.placeholder = ''" onblur="this.placeholder = '${member.pw}'" required> 
                                       
                                    </div>
                                    
                                </div>
                                <div class="reply-btn">
                                        <a href="" class="btn-reply text-uppercase">reply</a> 
                                </div>
                            </div>
                        </div>	
                         <div class="comment-list left-padding">
                            <div class="single-comment justify-content-between d-flex">
                                <div class="user justify-content-between d-flex">                                  
                                    <div class="desc">
                                        <h5><p>Name</p></h5>   
                                       <div>                                                                       
                                     <input type="text" id= "name" name = "name" value ="${member.name}"  class="form-control upd_input" placeholder="${member.name}" onfocus="this.placeholder = ''" onblur="this.placeholder = '${member.name}'" required> 
                                   		</div> 
                                    </div>
                                    
                                </div>                            
                            </div>
                        </div>	
                        
                        <div class="comment-list left-padding">
                            <div class="single-comment justify-content-between d-flex">
                                <div class="user justify-content-between d-flex">                             
                                    <div class="desc">
                                        <h5><p>Phone Number</p></h5>                               
                                        <input type="text" id= "tel" name = "tel" value="${member.tel}"  class="form-control upd_input" placeholder="${member.tel}" onfocus="this.placeholder = ''" onblur="this.placeholder = '${member.tel}'" required> 
                                    </div>
                                </div>                              
                            </div>
                        </div>	
                        <div class="comment-list left-padding">
                            <div class="single-comment justify-content-between d-flex">
                                <div class="user justify-content-between d-flex">                                   
                                    <div class="desc">
                                        <h5><p>Email</p></h5>                                     
                                        <input type="text" id= "email" name = "email" value = "${member.email}" class="form-control upd_input" placeholder="${member.email}" onfocus="this.placeholder = ''" onblur="this.placeholder = '${member.email}'" required> 
                                    </div>
                                </div>                             
                            </div>
                        </div>
                         <div class="comment-list left-padding">
                            <div class="single-comment justify-content-between d-flex">
                                <div class="user justify-content-between d-flex">                                   
                                    <div class="desc">
                                        <h5><p>corporate registration number</p></h5>                                     
                                         <input type="text" id= "reg_number" name = "reg_number" value="${member.reg_number}" class="form-control upd_input" placeholder="${member.reg_number}" onfocus="this.placeholder = ''" onblur="this.placeholder = '${member.reg_number}'" required> 
                                    </div>
                                </div>                            
                            </div>
                        </div>
                        <div id= "post_btn">
                        	 <a href="./memberUpdate?id=${member.id}" class="genric-btn info" >application1</a> 
                       		<button class="genric-btn info">application</button>
                       		<input type="submit" class="genric-btn info" value="application">
                        	 <input type="button" class="genric-btn danger" id="danger_btn" onclick="history.go(-1)" value="Cancel">                                                
                 	      </div>  
                 	      </form>                                     				
                    </div>
                               
    <!--================Blog Area =================-->

    <!-- Footer Area Starts -->
    <footer class="footer-area">
        <div class="footer-widget section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="single-widget single-widget1">
                            <a href="index.html"><img src="../resources/images/logo/logo2.png" alt=""></a>
                            <p class="mt-3">Which morning fourth great won't is to fly bearing man. Called unto shall seed, deep, herb set seed land divide after over first creeping. First creature set upon stars deep male gathered said she'd an image spirit our</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="single-widget single-widget2 my-5 my-md-0">
                            <h5 class="mb-4">contact us</h5>
                            <div class="d-flex">
                                <div class="into-icon">
                                    <i class="fa fa-map-marker"></i>
                                </div>
                                <div class="info-text">
                                    <p>1234 Some St San Francisco, CA 94102, US 1.800.123.4567 </p>
                                </div>
                            </div>
                            <div class="d-flex">
                                <div class="into-icon">
                                    <i class="fa fa-phone"></i>
                                </div>
                                <div class="info-text">
                                    <p>(123) 456 78 90</p>
                                </div>
                            </div>
                            <div class="d-flex">
                                <div class="into-icon">
                                    <i class="fa fa-envelope-o"></i>
                                </div>
                                <div class="info-text">
                                    <p>support@axiomthemes.com</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="single-widget single-widget3">
                            <h5 class="mb-4">opening hours</h5>
                            <p>Monday ...................... Closed</p>
                            <p>Tue-Fri .............. 10 am - 12 pm</p>
                            <p>Sat-Sun ............... 8 am - 11 pm</p>
                            <p>Holidays ............. 10 am - 12 pm</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-copyright">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7 col-md-6">
                        <span><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></span>
                    </div>
                    <div class="col-lg-5 col-md-6">
                        <div class="social-icons">
                            <ul>
                                <li class="no-margin">Follow Us</li>
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Area End -->


    <!-- Javascript -->
    <script src="../resources/js/vendor/jquery-2.2.4.min.js"></script>
    <script src="../resources/js/vendor/bootstrap-4.1.3.min.js"></script>
    <script src="../resources/js/vendor/wow.min.js"></script>
    <script src="../resources/js/vendor/owl-carousel.min.js"></script>
    <script src="../resources/js/vendor/jquery.datetimepicker.full.min.js"></script>
    <script src="../resources/js/vendor/jquery.nice-select.min.js"></script>
    <script src="../resources/js/main.js"></script>
</body>
</html>
