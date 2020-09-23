<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="icon" type="image/png" href="./res/images/favicon.ico">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Promotions</title>
    <link rel = "stylesheet" type = "text/css" href = "css/common.css" />
    <link rel = "stylesheet" type = "text/css" href = "css/promotions.css" />
</head>
<body>
            <!--Navigation bar-->
            <div id="navigationBar"class="navbar-active">
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
            <div class="panel">
                <div class="promotions">
                    <h1>Promotions</h1>
                    <div class="pizza-row">
                        <div class="card">
                            <img src="res/images/pizza.png" alt="pizza">
                            <h3 class="item-name">Double Cheese</h3>
                            <h2 class="price">Rs 900</h2>
                        </div>
                        <div class="card">
                            <img src="res/images/pizza.png" alt="pizza">
                            <h3 class="item-name">Chicken Bacon</h3>
                            <h2 class="price">Rs 700</h2>
                        </div>
                        <div class="card">
                            <img src="res/images/pizza.png" alt="pizza">
                            <h3 class="item-name">Devilled Chicken</h3>
                            <h2 class="price">Rs 950</h2>
                        </div>
                        <div class="card">
                            <img src="res/images/pizza.png" alt="pizza">
                            <h3 class="item-name">Cheese Lovers</h3>
                            <h2 class="price">Rs 940</h2>
                        </div>
                        <div class="card">
                            <img src="res/images/pizza.png" alt="pizza">
                            <h3 class="item-name">Tandoori chicken</h3>
                            <h2 class="price">Rs 900</h2>
                        </div>
                        <div class="card">
                            <img src="res/images/pizza.png" alt="pizza">
                            <h3 class="item-name">Sausages Delight</h3>
                            <h2 class="price">Rs 850</h2>
                        </div>
                        <div class="card">
                            <img src="res/images/pizza.png" alt="pizza">
                            <h3 class="item-name">Black Chicken</h3>
                            <h2 class="price">Rs 950</h2>
                        </div>
                        <div class="card">
                            <img src="res/images/pizza.png" alt="pizza">
                            <h3 class="item-name">BBQ Chicken</h3>
                            <h2 class="price">Rs 920</h2>
                        </div>
                        <div class="card">
                            <img src="res/images/pizza.png" alt="pizza">
                            <h3 class="item-name">Chicken Hawaiian</h3>
                            <h2 class="price">Rs 800</h2>
                        </div>
                        <div class="card">
                            <img src="res/images/pizza.png" alt="pizza">
                            <h3 class="item-name">Hot Butter Cuttlefish</h3>
                            <h2 class="price">Rs 750</h2>
                        </div>
                        <div class="card">
                            <img src="res/images/pizza.png" alt="pizza">
                            <h3 class="item-name">Butter Chicken</h3>
                            <h2 class="price">Rs 1000</h2>
                        </div>
                        <div class="card">
                            <img src="res/images/pizza.png" alt="pizza">
                            <h3 class="item-name">Hot & Spicy Chicken</h3>
                            <h2 class="price">Rs 950</h2>
                        </div>
                    </div>
                </div>
            </div>
</body>
</html>