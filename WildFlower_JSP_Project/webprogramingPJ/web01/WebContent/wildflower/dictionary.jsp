<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Wild Flower</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3-theme-red.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>


<body style="max-width:600px">


<!-- header부분 -->
<header>
 <%@ include file="header.jsp"%>
</header>

<!-- contents 부분 -->
<div class="w3-container" style="margin-top:75px">
	<h3 class="w3-text-red">
	<img src="../image/daisy.png" height="20px" width="20px"/>야생화 사전</h3>

		<span class="w3-third w3-padding-small" >
			<input type="text" class="w3-input w3-border w3-padding-0 w3-round-small" placeholder=" Search..">
		</span> 
		<i class="fa fa-search w3-padding-8"></i> 
	<hr>
	
	<div class="w3-row">
	  <div class="w3-col s3">
	    <img src="../image/flower/d1.jpg" style="width:100%">
	  </div>
	  <div class="w3-col s9 w3-container">
	    <h3 class="w3-text-red">해국 </h3>
	    <ul>
	    	<li>학명: Aster sphathulifolius Maxim</li>
	    	<li>분류: 국화과</li>
	    	<li>크기: 30~60cm</li>
	    	<li>용도: 관상용</li>
	    	<li>개화시기: 7월~11월 초, 고산지 및 지리산 개화기(8~11월 초)</li>
	    	<li>분포지: 한국</li>
	    	<li>생육특성: 우리나라 중부 이남의 해변에서 자라는 다년생 초본이다. 생육환경은 햇볕이 잘 드는 암벽이나 경사진 곳에서 자란다. 키는 30~60cm이고, 잎은 양면에 융모가 많으며 어긋난다. 잎은 위에서 보면 뭉치듯 전개되고 잎과 잎 사이는 간격이 거의 없는 정도이다. 겨울에도 상단부의 잎은 고사하지 않고 남아 있는 반상록 상태다. 꽃은 연한 자주색으로 가지 끝에 하나씩 달리고 지름은 3.5~4cm이다.
			잎은 풍성하게 많으며 끈적거리는 감이 있어서 여름철에 애벌레가 많이 꼬인다.</li>
	    </ul>
	  </div>
	</div>  
	<hr>
	<div class="w3-row">
	  <div class="w3-col s3">
	    <img src="../image/flower/d2.jpg" style="width:100%">
	  </div>
	  <div class="w3-col s9 w3-container">
	    <h3 class="w3-text-red">털머위</h3>
	    <ul>
	    	<li>학명: Farfugium japonicum (L.) Kitam</li>
	    	<li>분류: 국화과</li>
	    	<li>크기: 30~50cm</li>
	    	<li>용도: 관상용</li>
	    	<li>개화시기: 	9월~10월, 고산지 및 지리산 개화기(10~11월 초)</li>
	    	<li>분포지: 한국</li>
	    	<li>생육특성: 우리나라 남부와 제주도 울릉도 해안에서 나는 상록 다년생 초본이다. 생육환경은 양지 혹은 반그늘의 따뜻하고 물 빠짐이 좋은 곳에 자란다. 키는 30~50cm이고, 잎은 길이 4~15cm, 폭 6~30cm로 광택이 많이 난다. 꽃은 황색이며 길이 30~75cm로 포가 있으며 가지 끝에 지름 4~6cm 정도되는 꽃이 한 개씩 달려서 전체적으로 큰 무리를 이룬다. 열매는 11~12월경에 맺고 흑갈색에 길이는 0.8~1.1cm로 갓털이 있다.</li>
	    </ul>
	  </div>
	</div>
	<hr>
	<div class="w3-row">
	  <div class="w3-col s3">
	    <img src="../image/flower/d3.jpg" style="width:100%">
	  </div>
	  <div class="w3-col s9 w3-container">
	    <h3 class="w3-text-red">투구꽃</h3>
	     <ul>
	    	<li>학명: Aconitum jaluense Kom. subsp. Jaluense</li>
	    	<li>분류: 미나리아재비과</li>
	    	<li>크기: 1m</li>
	    	<li>용도: 관상용</li>
	    	<li>개화시기: 8월~9월, 고산지 및 지리산 개화기(9~10월)</li>
	    	<li>분포지: 한국</li>
	    	<li>생육특성: 우리나라 각처의 산에서 자라는 다년생 초본이다. 생육환경은 반그늘 혹은 양지의 물 빠짐이 좋은 곳에서 자란다. 키는 약 1m 정도이고, 잎은 잎자루 끝에서 손바닥을 편 모양으로 3~5갈래로 깊이 갈라지고, 어긋난다. 꽃은 자주색 혹은 흰색으로 모양은 고깔이나 투구와 같으며 줄기에 여러 개의 꽃이 어긋나고 아래에서 위로 올라가며 핀다. 열매는 10~11월에 맺고 타원형이며 뾰족한 암술대가 남아 있다.</li>
	    </ul>
	  </div>
	</div>
	<hr>
<br><br><br>
</div>
<br><br><br>

<!-- footer부분 -->
<footer class="w3-container w3-theme w3-bottom">
  <%@ include file="footer.jsp"%>
</footer>

<script>
function w3_open() {
    document.getElementById("mySidenav").style.display = "block";
}
function w3_close() {
    document.getElementById("mySidenav").style.display = "none";
}
</script>

</body>

</html>