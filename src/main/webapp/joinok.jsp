<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
    <script src="https://kit.fontawesome.com/e31c434757.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.1.js"></script>
    <script src="./js/slideIn.js"></script>
    <link href="./css/slidein.css" rel="stylesheet">
    <link href="./css/slide.css" rel="stylesheet">
    <title>Diary</title>
 
</head>
<body>
    <div id="main">
        <nav class="sidebar clear">
            <header>
                <div class="image-text">
                    <span class="image">
                       
                    </span>
    
                    <div class="text logo-text">
                        <div class="user-img join_img">
                          
                            <img src="img/woman.png" alt="img" class="join_img">
                        </div>
                        <c:if test="${list == 1}">
                        <span class="login join">${dto.id }님</span>
                        <div class="join_sub"></div>
                        </c:if>
                    </div>
                </div>
    
                
            </header>
    
         
    
        </nav>
    
        <section class="home">
            <section class="ftco-section">
                <div class="container join_container">
                    <h2>회원가입 완료</h2>
					<form name="form">
						<table id="join">
							<tr>
								<td>ID :</td>
								<td>${list.id }</td>
							</tr>
								<td></td>
							<tr>
							</tr>
							<tr>
								<td>PASSWORD :</td>
								<td>${list.pw }</td>
							</tr>
							<tr>
								<td>NAME :</td>
								<td></td>
							</tr>
							<tr>
								<td>BIRTH :</td>
								<td></td>
							</tr>
							<tr>
								<td>E-MAIL :</td>
								<td></td>
							</tr>
							<tr>
								<td>TEL :</td>
								<td></td>
							</tr>
							<tr>
								<td>INTRODUCE :</td>
								<td></td>
							</tr>
						</table>
						<div class="join_main_btn">
							<input type="button" name="join" class="btn-9 join_mainbtn"
								value="회원가입" onclick="check();" id="btnjoin">
							<button type="button" onclick="history.back();"
								class="btn-9 join_mainbtn">뒤로가기</button>
						</div>
					</form>
				</div>
            </section>
            

    <script src="js/jquery.min.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>

 
 	<script>
 		
 	</script>
</body>
</html>