<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@include file="admin_interface.jsp"%>
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
  <link rel="stylesheet" href="css/home.css">
</head>
<body>
<!--image slider start-->
    <div class="slider">
        <div class="slides">
            <!--radio button start-->
            <input type="radio" name="radio-btn" id="radio">
            <input type="radio" name="radio-btn" id="radio">
            <input type="radio" name="radio-btn" id="radio">
            <input type="radio" name="radio-btn" id="radio">
            <!--slide image start-->
            <div class="slide-first">
                <img src="img/G1.jpg" alt="">

            </div>
            <div class="slide">
                <img src="img/G2.jpg" alt="">

            </div>
            <div class="slide">
                <img src="img/G3.jpg" alt="">

            </div>
            <div class="slide">
                <img src="img/G4.jpg" alt="">

            </div>
            <!--automatic navigation start-->
            <div class="navigation-auto">
                <div class="auto-btn1">

                </div>
                <div class="auto-btn2">

                </div>
                <div class="auto-btn3">

                </div>
                <div class="auto-btn4">

                </div>
            </div>

        </div>
        <!--manual navigation start here-->
        <div class="navigation-manual">
            <label for="radio1" class="manual-btn"></label>
            <label for="radio2" class="manual-btn"></label>
            <label for="radio3" class="manual-btn"></label>
            <label for="radio4" class="manual-btn"></label>
        </div>

    </div>
      <!--image slider end-->
    <script type="text/javascript">
        var counter=1;
        setInterval(function(){
            document.getElementById('radio'+ counter).checked=true;
            counter++;
            if(counter>4){
                counter=1;
            }
        },5000);

    </script>
</body>
</html>