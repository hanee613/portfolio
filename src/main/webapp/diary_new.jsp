<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <script src="https://kit.fontawesome.com/e31c434757.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
    <script src="https://code.jquery.com/jquery-3.6.1.js"></script>
    <script src="js/main.js"></script>
    <title>Diary</title>
</head>
<body>
    <div id="main">
         <nav class="sidebar clear">
            <header>
                <div class="image-text">
                   
                    <div class="text logo-text">
                        <div class="user-img">
                        	            
                            
                            <label for="profileimg" style="width:120px; height:128px; position:absolute; z-index:4;">   
                            <div class="user-plus" style="left:-128px;">    
                            <i class="fas fa-plus"></i>
                            </div>
                            </label>
                            
                            
                             <form>
                            	<input type="file" name="profileimg" style="display:none;" id="profileimg">
                            </form>
                            
                            <div class="clear"></div>
                            
                            <img src="img/member.jpg" alt="img" class="user_img_img" style="z-index:1;">
                            
                        </div>
                        <span class="name">hanee</span>
                    </div>
                </div>
    
                
            </header>
    
            <div class="menu-bar">
                <div class="menu">
    
                    <ul class="menu-links">
                        <li class="nav-link">
                                <i class='fas fa-cake-candles icon' ></i>
                                <span class="text nav-text">1999-06-13</span>
                        </li>
    
                        <li class="nav-link">
                            <div class="email-icon">
                                <i class='fas fa-paper-plane icon' ></i>
                                </div>
                                <div class="email">hanee@naver.com</div>
                        </li>
    
                        <li class="nav-link">
                                <i class='fas fa-phone-flip icon'></i>
                                <span class="text nav-text">010-1111-1111</span>
                        </li>
    
                        <li class="nav-link">
                                <i class='fas fa-tag icon' ></i>
                                <span class="text nav-text">Introduce</span> 
                            
                        </li>
                        <div class="introduce">나의 하루 일기</div>
                        <li class='nav-link'>
                            <a href href="#">
                                <i class='bx bx-log-out icon' ></i>
                            <span class="text nav-text">Logout</span>
                            </a>
                        </li>
    
                    </ul>
                </div>
    
                
            </div>
    
        </nav>


        <section class="home">
        <form method="POST" action="diary_add.do" enctype="multipart/form-data">
            <div class="diary_new_wrap">
                <div class="pinimg"><img src="img/AdobeStock_494458074.png" alt="img"></div>

                <div class="new_text_wrap">
                <div class="new_title">
                    <div style="display:inline-block; margin-right:10px; font-weight: bold; font-size: 1.2rem;">제목 : </div><input type="text" placeholder="Title" name="new_title">
                </div>
                <div class="new_content">
                    <textarea class="new_textarea" name="new_diary" title="일기를 써보세요."></textarea>
                    <input type="file" name="imgfile" title="이미지">
  
                    <input type="submit" class="btn-9 new_btn" role="button" value="글쓰기">
                    <button class="btn-9" role="button">뒤로가기</button>
                   
                    <div class="clear"></div>
                </div>
                </div>

            </div>
            
            </form>

        </section>



        </div>

       <script>
$('.user-img img').mouseover(()=>{
    $('.user-img img').css('opacity', 0);
    $('.user-plus').css('display', 'block');
});
$('.user-img img').mouseout(()=>{
    $('.user-img img').css('opacity', 1);
    $('.user-plus').css('display', 'none');
});

       </script>
</body>
</html>