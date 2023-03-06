<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<style>
		.join_container{
			padding-bottom:50px;
		}
	</style> 
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
                        <span class="login join">JOIN</span>
                        <div class="join_sub">Diary의 회원이 되어주세요!</div>
                    </div>
                </div>
    
                
            </header>
    
         
    
        </nav>
    
        <section class="home">
            <section class="ftco-section">
                <div class="container join_container">
                    <h2>회원가입</h2>
					<form action="/diary/joinok.do" method="POST" name="form">
						<table id="join">
							<tr>
								<td>ID :</td>
								<td><input type="text" name="id" class="join_txt"
									title="ID" id="id" required>
									<input type="button" class="btn-9 join_btn" onclick="idcheck();" value="중복확인"></td>
							</tr>
							<tr>
								<td></td>
								<td id="result">아이디는 한글, 영어, ' _ '를 이용해서 입력해주세요.</td>
							</tr>
							<tr>
								<td>PASSWORD :</td>
								<td><input type="password" name="pw" class="join_txt"
									title="password" id="pw" required></td>
							</tr>
							<tr>
								<td>NAME :</td>
								<td><input type="text" name="name" class="join_txt"
									title="ID" id="name" required>
								</td>
							</tr>
							<tr>
								<td>BIRTH :</td>
								<td>
									<select name="year" id="year" class="join_txt tel">
									</select> - 
									<select name="month" id="month" class="join_txt tel"></select> - 
									<select name="day" id="day" class="join_txt tel"></select>
								</td>
							</tr>
							<tr>
								<td>E-MAIL :</td>
								<td><input type="email" name="email" class="join_txt"
									title="email"></td>
							</tr>
							<tr>
								<td>TEL :</td>
								<td><input type="text" name="telfir" class="join_txt tel"
									size="5" title="TEL"> - <input type="text" name="telsec"
									class="join_txt tel" size="7" title="TEL"> - <input
									type="text" name="telthi" class="join_txt tel" size="7" title="TEL">
								</td>
							</tr>
							<tr>
								<td>INTRODUCE :</td>
								<td>
									<textarea name="intro" id="intro" cols="30" rows="3" class="join_txt"></textarea>
								</td>
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
 		function idcheck() {
 			//window.open('idcheck.jsp?id=' + $('#id').val() , 'child', 'width=500 height=500');
 			
 			$.ajax({
 	    		  type: 'GET',
 	    		  url: '/diary/idcheck.do',
 	    		  data: 'id=' + $('#id').val(),
 	    		  dataType: 'json',
 	    		  success: function(result) {
 	    			  if (result.use == 1) {
 	    				  $('#result').text('');
 	    				  $('#result').text('이미 사용중인 아이디입니다.').css('color', 'tomato').css('font-size', '.7rem');
 	    				  
 	    				  
 	    			  } else {
 	    				 $('#result').text('');
 	    				 $('#result').text('사용 가능한 아이디입니다.').css('color', 'cornflowerblue').css('font-size', '.7rem');
 	    				 
 	    			  }
 	    		  },
 	    		  
 	    		  error: function(a,b,c) {
 	    			  console.log(a,b,c);
 	    		  }
 	    	  });
 			
 		}
 		
 		function check() {
 			
 			if ($('#id').val() == ''){
 				alert('아이디를 입력해주세요.');
 				$('#id').focus();
 			} else if ($('#pw').val() == ''){
 				alert('비밀번호를 입력해주세요.');
 				$('#pw').focus();
 			} else {
 				
 				if ($('#result').text() == '이미 사용중인 아이디입니다.'){
 					alert('아이디 중복체크를 해주세요');
 					$('#id').focus();
 				} else {
 					document.form.submit();
 				}
 				
 			}
 		}
 		
 		for (var i=1990; i<=2022; i++) {
 			$('#year').append("<option value='" + i + "'>" + i + "</option>");
 		}
 		
 		for (var i=1; i<=12; i++) {
 			if(i >= 10){
 				$('#month').append("<option value='" + i + "'>" + i + "</option>");	
 			} else if(i < 10) {
 				$('#month').append("<option value='0" + i + "'>0" + i + "</option>");
 			}
 			
 		}
 		
 		for (var i=1; i<=31; i++) {
 			if(i >= 10){
 				$('#day').append("<option value='" + i + "'>" + i + "</option>");	
 			} else if(i < 10) {
 				$('#day').append("<option value='0" + i + "'>0" + i + "</option>");
 			}
 			
 		}
 		
 	</script>
</body>
</html>