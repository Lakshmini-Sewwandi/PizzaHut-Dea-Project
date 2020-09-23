<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="icon" type="image/png" href="./res/images/favicon.ico">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel = "stylesheet" type = "text/css" href = "css/index.css" />
    <link rel = "stylesheet" type = "text/css" href = "css/home.css" />
    <link rel = "stylesheet" type = "text/css" href = "css/common.css" />
    <title>Bruno's Pizza</title>
</head>
<body>
    <!--Navigation bar-->
    <div id="navigationBar">
        <ul>
                    <li><a href="index.jsp">Bruno's Pizzeria</a></li>
                    <li><a href="promotions.jsp">Promotions</a></li>
           	<%Cookie[] cookies = request.getCookies();
				int check = 0;
				String displayName = null;
				for(Cookie cookie : cookies){
					if(cookie.getName().equals("user")) {
						check=1;
						displayName = cookie.getValue();
					}
				}
				if(check==1){
					out.println("<li style='padding-left:20vw;padding-right:10px;'><img src='res/images/profile.png' width='16px' style='padding-top:0px; margin-right:10px;'>"+displayName+"</li><li style='padding-right:5vw'><a href='logout'>Logout</a></li>");
				}else{
					out.println("<li><a href='register.jsp'>Register</a></li><li><a href='login.jsp'>Login</a></li>");
				}
				%>
        </ul>
    </div>

    <!--Content-->
    <div id="well" class="well content">

        <!--Slide show-->
        <div class="panel" id="slideShow">
            <div id="slider">
            </div>
            <a id="prev" onclick="showSlide(0);" class="control prev"></a>
            <a id="next" onclick="showSlide(1);" class="control next"></a>
            <div id="indicators">
                <div class="indicator"></div>
                <div class="indicator"></div>
                <div class="indicator"></div>
            </div>
            <div class="welcome">
               <h2> Welcome to Bruno's Pizzeria.</h2>
                <h3>Order a delicious pizza today.</h3>
            </div>
        </div>

        <!--Description-->
        <div class="panel" id="description-wrapper">
            <img src="res/images/home_bg1.jpg">
            <div id="description">
                <h3>Who We Are</h3>
                <p><h5>Bruno's Pizzeria was bought to Australia in the early 80s, by an unspired young man named Bruno. Having scored the perfect location, within the heart ow Hawthorn, Bruno set out to bring his Italian heritage to everyone's bellies.</h5><p>
                    <p><h5>The reason you're probably looking at our website right now is because you're looking for dinner. We can gurantee you'll have the biggest smile and happiest belly after taking your first bite of our delicious pizzas.</h5></p>
                    <p><h5>If you're looking to dine-in, we can provide professionalrestaurant quality service. Or if you're looking to binge your favourite TV show on the couch, we can deliver right to your door.</h5></p>
            </div>
        </div>

        <!--Menu-->
        <div class="panel" id="menu-wrapper">
            <div id="menu">
                <img src="res/images/home_bg2.jpg">
                <div class="column col1">
                    <h3>Margarita</h3>
                    <h4>Small $10/ Medium $12/ Large $14</h4>
                    <p>Nothing beats the classics! With a tomato base and mozzarella cheese, sprinkled with the finest italian herbs, you can't say no.</p>
                    <br>
                    <h3>Supreme</h3>
                    <h4>Small $10 / Medium $12 / Large $14</h4>
                    <p>The supreme leader of pizza (no bias here). Salami, ham, chorizo, mushrooms, onions, capsicums, pineapple, on a tomato base and topped with mozzarella, herbs and garlic. You can't go wrong!</p>
                    <br>
                    <h3>Hawaiian</h3>
                    <h4>Small $10 / Medium $12 / Large $14</h4>
                    <p>The victim of many debates over pineapple on pizza. The simple, ham and pineapple pizza is still the most refreshing pizza on the market.</p>
                </div>
                <div class="column col2">
                    <h3>Margarita</h3>
                    <h4>Small $10/ Medium $12/ Large $14</h4>
                    <p>Nothing beats the classics! With a tomato base and mozzarella cheese, sprinkled with the finest italian herbs, you can't say no.</p>
                    <br>
                    <h3>Supreme</h3>
                    <h4>Small $10 / Medium $12 / Large $14</h4>
                    <p>The supreme leader of pizza (no bias here). Salami, ham, chorizo, mushrooms, onions, capsicums, pineapple, on a tomato base and topped with mozzarella, herbs and garlic. You can't go wrong!</p>
                    <br>
                    <h3>Hawaiian</h3>
                    <h4>Small $10 / Medium $12 / Large $14</h4>
                    <p>The victim of many debates over pineapple on pizza. The simple, ham and pineapple pizza is still the most refreshing pizza on the market.</p>
                
                </div>
            </div>
        </div>
    </div>
</body>
<script src="js/app.js"></script>
<script src="js/home.js"></script>
</html>