
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
<head></head>
<body>
        <section id="home">
            <h2 class="home__title">picSTAR</h2>
            <p class="home__description">숨겨진 STAR 작가님들의 pic을 나누는 picSTAR 입니다.<br/>
            <ul class="posters">
                <li class="poster"><a href="https://projectify.kr/236" target="_blank">
                    <img src="../images/poster/전시회1.jpeg" alt="poster1" class="poster__img">
                    <div class="poster__metadata">
                        <h3 class="poster__title">겨울의 뉘앙스</h3>
                        <p> 작가: 임수진 <br> 장소: 프로젝티파이 <br> 2023.10.31 ~ 2023.11.21</p>
                    </div>
                </a></li>
                <li class="poster"><a href="https://lets-keep-it-fresh-gallery.com/EXHIBITION" target="_blank">
                    <img src="../images/poster/전시회2.png" alt="poster2" class="poster__img">
                    <div class="poster__metadata">
                        <h3 class="poster__title">Thrownness</h3>
                        <p> 작가: 엔오브라 <br> 장소: LKIF GALLERY <br> 2023.10.24 ~ 2023.11.11</p>
                    </div>
                </a></li>
                <li class="poster"><a href="https://artside.org/" target="_blank">
                    <img src="../images/poster/전시회3.webp" alt="poster3" class="poster__img">
                    <div class="poster__metadata">
                        <h3 class="poster__metadata__title">Dear Summer</h3>
                        <p> 작가: 류주영<br> 장소: 아트사이드 갤러리 <br> 2023.10.27 ~ 2023.11.18</p>
                    </div>
                </a></li>
            </ul>
            <a class="home__contact" onclick= "location.href='picSTAR.html'">Go to picSTAR!</a>
        </section>
         <!--picSTAR 소개  -->
         <section id="about" class="section">
            <h2 class="title">picSTAR 소개</h2>
            <p class="description">숨겨진 STAR작가의 Pic과 Story를 공유하는 picSTAR입니다.</p>
            <p>인스타그램 <a class= "picstar__instagram"href="https://www.instagram.com/picstar_official/" target="_blank" >@picstar_official</a> 통해 다양한 소식을 받아볼 수 있습니다.</p>
            <p>문의사항은 DM으로 보내주세요.</p>
         </section>
        <!--STAR's 굿즈제작 -->
        <section id="goods" class="section">
            <h2 class ="title">STAR's 굿즈 제작소</h2>
            <p class="goods__description">내가 원하는 그림으로 굿즈를 제작할 수 있습니다.</p>
            <ul class="make__goods">
                <li class="make__good">
                    <img src="../images/goods/goods1.webp" alt="goods1" class="make_good__img">
                    <p class="goods__title">마스킹 테이프</p>
                    <p class="goods__check">3개 이상부터 주문 가능</p>
                    <p class="goods__price">2,000원</p>
                </li>
                <li class="make__good">
                    <img src="../images/goods/goods2.webp" alt="goods2" class="make_good__img">
                    <p class="goods__title">달력 110x150</p>
                    <p class="goods__price">5,000원</p>
                </li>
                <li class="make__good">
                    <img src="../images/goods/goods3.webp" alt="goods3" class="make_good__img">
                    <p class="goods__title">메모장</p>
                    <p class="goods__check">3개 이상부터 주문 가능</p>
                    <p class="goods__price">2,000원</p>
                </li>
                <li class="make__good">
                    <img src="../images/goods/goods4.webp" alt="goods4" class="make_good__img">
                    <p class="goods__title">패브릭</p>
                    <p class="goods__price">8,000원</p>
                </li>
                <li class="make__good">
                    <img src="../images/goods/goods5.webp" alt="goods5" class="make_good__img">
                    <p class="goods__title">달력 230x100</p>
                    <p class="goods__price">9,000원</p>
                </li>
                <li class="make__good">
                    <img src="../images/goods/goods6.webp" alt="goods6" class="make_good__img">
                    <p class="goods__title">에코백</p>
                    <p class="goods__price">15,000원</p>
                </li>
            </ul>
            <a class="goods__contact" href="https://docs.google.com/forms/d/e/1FAIpQLSco27fkisQYc9yH98UwiVoxytVsu9mM7vkHBM75omV62Q--SQ/viewform?usp=sf_link">STAR's 굿즈 제작의뢰</a>
        </section>
</body>
</html>