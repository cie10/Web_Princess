<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
<head></head>
<body>
    <%
    String session_id = (String)session.getAttribute("userID"); 

    if(session_id != null){
%>  
    <script>
        window.onload = function block() {
            const view = document.getElementById('login');
            view.style.display = 'none';
        }
    </script>
<% 
    }
%>    	
        <!-- 로그인/회원가입 -->
        <section id="login" class="section" >
            <div class="form" >
                <form class="login-form" method="post" action="login_verify.jsp">
                    <h2 >Login</h2>
                    <input type="text" placeholder="username" name="id" />
                    <input type="password" placeholder="password" name="pw" />
                    <button class="button" >login</button>
                    <p class="message">Not registered? <a href="#login" class="Register">Create an account</a></p>
                </form>
                <form class="register-form" method="post" action="Signin.jsp">
                    <h2 class="title">Sign In</h2>
                    <input type="text" placeholder="name" name="id"/>
                    <input type="password" placeholder="password" name="pw" />
                    <input type="text" placeholder="email address" name="email"/>
                    <div id="wrapper">
                        <button class="button">create</button>
                    </div>           
                    <p class ="message">Already registered? <a href="#login" class="Login">Login In</a></p>
                </form>
            </div>
            <div id="popup1" class="overlay">
                <div class="popup">
                    <h2>Login Success!</h2>
                    <a class="close" href="#">&times;</a>
                    <div class="content">
                        <p>로그인이 완료되었습니다. </p>
                    </div>
                </div>
            </div>
            
        <div id="popup2" class="overlay">
                <div class="popup">
                    <h2>Sign Up Success!</h2>
                    <a class="close" href="#">&times;</a>
                    <div class="content">
                        <p>회원가입이 완료되었습니다.</p>
                    </div>
                </div>
            </div>
        </section>
        <!-- 마이페이지 -->
        <section id="mypage" class="section">
            <h2 class="title">My page</h2>
            <ul class="categories">
                <li><button class = "category" data-category="나의 picSTAR">나의 picSTAR</button></li>
                <li><button class = "category" data-category="나의 리뷰">나의 리뷰</button></li>
                <li><button class = "category" data-category="picSTAR 제작의뢰">picSTAR 제작의뢰</button></li>
            </ul>
            <ul class = "My_picSTARs">
                <li class="My_picSTAR"></li>
            </ul>
            <p claa="description"></p>
        </section>
</body>
</html>