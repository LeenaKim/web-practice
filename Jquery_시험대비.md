[toc]



# Jquery 사용 방법

- jquery.com에서 파일 다운받아 저장
- CDN(Content Delivery Network) : 세계 여러곳에 서버가 있는 대형 기업(구글, 마소 등)이 사용자에게 간편하게 콘텐츠를 제공하는 방식. 사용자와 가장 가까운곳에 있는 서버에서 데이터를 전달하므로 빠르게 자바스크립트 파일 불러올 수 있다.

```html
절대경로 : <script src = "/Lecture-WEB/jquery/js/jquery-3.5.1.min.js">
//jquery의 모든 문법은 '$'로 시작.
</script>

<!-- 상대경로 -->
<script src = "js/jquery-3.5.1.min.js"></script>

<!-- 대형 회사들이 만든 jquery도 src로 붙여 사용 가능 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

 
<!-- jquery 사이트에서 제공하는 jquery (웹으로 바로 갖고옴) -->
<script>
  src="https://code.jquery.com/jquery-3.5.1.min.js"
  integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
  crossorigin="anonymous"></script>

 
<!-- jquery 사이트의 가장 최근에 released된 jquery 가져오기 -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

```

- $(document).ready(function() {})

  $(<매개변수>).메소드(<매개변수>, <매개변수>)

```javascript
// window.onload 쓰려면 script 태그 다시열어야함. 
// (document).ready() 안에서 원래 자바스크립트 문법도 사용 가능 
	$(document).ready(function() {
		alert('준비 완료!');
	})
	// (document).ready는 여러개도 가능 
	$(document).ready(function() {
		alert('준비 완료!2');
	})
	// 축약하면 $()
	$(function() {
		alert('준비 완료!3');
	})
```



# 기본

- `var $headers = $('h1')` : Json에서는 자바스크립트의 객체와 구분하기위해 보통 $를 앞에 붙여준다.

# 이벤트 속성 메소드 (DOM)

## hide()

display = none; 과 같은 효과.

```javascript
$(document).ready(function() {
		alert('ready')
		$('h1').hide()			// 해당하는 선택자 태그의 display 속성을 non으로 바꿈. 
		$('#h01').hide()
		$('.h02').hide()
		$('h1.h02').hide() 	// h1 태그중에서 클래스가 h02인 아이 
		$('*').hide()	   		// 모든 태그 hide 
		$('body > *').hide()
		$('h1:first').hide()		
		$('h1:last').hide()		
}
```

- 자손, 부모 구분

```javascript
	$(document).ready(function() {
		alert('ready')
		$('ul li').hide()							// ul 태그 후손의 li 태그 전부 다 
		$('ul li:first').hide()				// ul을 하나로 보고 맨 첫번째 자식만 hide 
		$('ul li:last').hide()
		$('ul li:first-child').hide() // ul을 각각의 두 그룹으로 보고, 각 그룹의 첫번째 자식을 hide 
		$('ul li:last-child').hide() 	// ul을 각각의 두 그룹으로 보고, 각 그룹의 첫번째 자식을 hide 
	})
```

```html
<body>
	<h1>동물종류</h1>
	<ul>
		<li>호랑이</li>
		<li>코끼리</li>
		<li>사자</li>
		<li>곰</li>
	</ul>
	<h1>음식종류</h1>
	<ul>
		<li>떡볶이</li>
		<li>라면</li>
		<li>김밥</li>
	</ul>
</body>
```



## click

```javascript
$(document).ready(function() {
		alert('ready')
		$('input:text').hide() 		// input태그중 type이 text인 녀석 
		$('input:button').hide()
		$(':button').hide() 		// 그냥 타입이 버튼인것. 어차피 type 속성을 가진 태그는 input밖에 없으니까. 하지만 버튼 1 2 가 모두 지워진다. 왜? button 태그도 type="button"이라는 태그가 디폴트로 있기때문. 
		$('button').hide() 			// 태그명이 버튼인 아이만 
		$(':button').click(function() {	
			$('hr').hide()			// json은 복수개의 개체에도 이벤트 설정 가능 (버튼 두개)
			$(this).hide("drop", {direction: "down"})			// 버튼 자체를 CDM을 이용해 hide 함수를 응용해 drop 효과로 사라지게함 
		})
	})
```

```html
<body>
	<hr>
	<input type="text">
	<input type="button" value="버튼1">
	<button>버튼2</button>
	<hr>
</body>
```



## css

- even 선택자 : 짝수번째 요소
- Odd 선택자 : 홀수번째 요소 

```javascript
	$(document).ready(function() {
		$('tr:even').css('background-color', 'yellow')	// even : 짝수번째 tr / odd : 홀수번째 tr 
	})
```



## mouseenter, mouseleave, hover

- `mouseenter` : 해당 영역에 마우스가 진입되면 
- `mouseleave` : 해당 영역에 마우스가 떠나면 
- `hover` : 마우스를 갖다대거나 떼면 (매개변수가 갖다 댈때, 뗄때의 두 가지 경우의 콜백함수)

```javascript
$(document).ready(function() {
//		alert('ready')
		$(':button').click(function() {
			$('h1:first').hide('slow')	// slow, fast : 사라지는 속도 조절 / 3000 : 3초에 걸쳐 사라지기. 밀리세컨드 조절 가능 
		})
		
		$('body > h1').dblclick(function() {	// 더블클릭 이벤트 발생시 
			$(this).hide(1000)
		})
		/* 
		$('#div01').mouseenter(function() {		// mouseenter : 해당 영역에 마우스가 진입되면 
			$(this).css('background-color', 'blue')
		})
		
		$('#div01').mouseleave(function() {		// mouseleave : 해당 영역에 마우스가 떠나면 
			$(this).css('background-color', 'yellow')
		}) */
		
		$('#div01').hover(function() {
			// mouseenter에 대한 콜백 
			$(this).css('background-color', 'gray')
		}, function(){
			// mouseleave에 대한 콜백 	
			$(this).css('background-color', 'yellow')
		})
		
		$('#div01').hover(function(event) {		// event 매개변수로 이벤트를 다양하게 제어 가능하다. 
			console.log(event.pageX, event.pageY)
		})
		
	})
```



## keyup, keydown, focus, blur

- `keydown` : 문자가 눌릴동안
- `keyup` : 문자가 안눌릴동안
- `focus` : 커서가 있을동안
- `blur` : 커서가 떠날동안

```javascript
$(document).ready(function() {
		$('input').keydown(function() {		// keydown : 문자가 눌릴동안 
			$(this).css('color', 'orange')
		})
		
		$('input').keyup(function() {		// keyup : 문자가 안눌릴동안 
			$(this).css('color', 'black')
		})
		
		$('input').focus(function() {		// focus : 커서가 있을동안 
			$(this).css('border', '3px solid pink')
			$(this).css('background-color', 'skyblue')
		})
		
		$('input').blur(function() {		// blur : 커서가 떠날동안 
			$(this).css('border', '1px solid black')
			$(this).css('background-color', 'white')
			
		})
	})
```



## on

해당 태그에 대해 여러 이벤트를 리슨하고싶을때 - 자바스크립트 객체와 함께 쓸 수 있다.

```javascript
$('h1').on({
			'click' : function() {
				//$(this).css('color', 'red')
				//$(this).css('background-color', 'purple')
				$(this).css({	// 자바스크립트 객체로 속성과 속성명 정의 가능. 
					color: 'red',
					'background-color': 'purple'	// '-' 와 같은 특수문자가 있는경우 반드시 '' 붙여야함 
				})
			}, 'mouseenter' : function() {
				$(this).css('background-color', 'yellow')
			}, 'mouseleave' : function() {
				$(this).css('background-color', 'white')
			}
		})
```



## toggle

번갈아 움직이고싶을때

```javascript
$(document).ready(function() {
		
		$('div').hide(1000)
		$('div').show(1000)
		
		$('div').toggle(1000)		// show와 hide를 번갈아가며 움직이고싶을떄 
		$('div').toggle(1000)
		
		$('div').fadeOut(1000)
		$('div').fadeIn(1000)
		
		$('div').fadeToggle(1000)	// fade in과 fade out을 번갈아가며 움직이고싶을때 
		$('div').fadeToggle(1000)
		
		$('div').fadeTo(1000, 0.5)	// 투명도 설정
	})
```



## animate

애니메이션과 같은 효과를 입히고싶을때

```css
div {
		width: 400px;
		height: 400px;
		background-color: red;
		display: none;			/* 처음엔 아무것도 안보이게 */ 
		position: absolute;		/* position default가 static이라 밑의 left, top 이 먹지 않음. absolute로 바꿔야.  */
	} 
```

```javascript
$(document).ready(function() {
		$('div').animate({
			/* 
			width: '200px',
			height: '+=200px'	// 현재 height보다 200px 더한값으로 
			 */
			width: 'toggle',
			height: 'toggle',
			left: '100px',
			top: '50px',
			opacity: '0.6'		// 투명도 
		}, 2000)
		
	})
```





```javascript
$(document).ready(function() {
		$('div').animate({
			'width' : '200px'
		}, 1000)
		
		$('div').animate({
			left: '100px',
			width: '100px'
		}, 2000)
		
		$('div').animate({
			'height' : '200px',
			'top': '100px'
		}, 1000)
		
		$('div').animate({
			'height': '100px',
			left : '0px',
			top: '200px',
			backgroundColor: 'blue',
			'border-radius': '50%',
			opacity: '0.4'
		}, 2000, function() {	// 콜백함수 활용가능
			$(this).css('background-color', 'pink')
		})
	})
```



## slideToggle, slideDown, slideUp

- `slideToggle` : 올라가있으면 내려가게, 내려가있으면 올라가게
- `slideDown` : 내리면서 생기게
- `slideUp` : 올리면서 사라지게

```javascript
$(document).ready(function() {
		$('#menu').hover(function() {
			//$('#subMenu').slideDown(1000)	// 내려갔다 
			$('#subMenu').slideToggle(1000)
		}, function() {
			//$('#subMenu').slideUp(1000)		// 올라왔다 
			$('#subMenu').slideToggle(1000)
		})
	})
```

- 콜백함수 활용 : 일정 시간이 걸리는 이벤트가 모두 수행된 후에 다음 이벤트가 수행되어야 할 때

```javascript
$(document).ready(function() {
		/* 
			3초에 걸쳐 "첫번째 문장"이라고 화면에 보인 뒤, complete라는 메세지를 띄우기 
		*/
		$('h1').show(3000, function() {
			$(this).css('color', 'blue');
			$(this).slideToggle(1000).slideToggle(1000, function() {	// 메소드체이닝 
				$(this).css('background-color', 'yellow')
			})
		})
	})
```



## trigger 

어떠한 이벤트가 일어날때마다 하려는 행동을 정의할 때

```javascript
$(document).ready(function() {
		$('h1').click(function(event, data) {
			//$(this)[0].innerHTML += data		// 자바스크립트 문법 
			$(this).html()
		})
		
		setInterval(function() {
			$('h1').trigger('click', '*')	// 1초에 한번씩 $('h1').click 이벤트를 발생시킴 
		}, 1000)
	})
```



## html, text, attr, val

- `html` : 해당 태그의 태그 포함 텍스트 뽑아내기
- `text` : 해당 태그의 태그 제외 텍스트 뽑아내기
- `attr` : 속성 추출 / 속성 재정의
- `val` : value값 추출

```javascript
$(document).ready(function() {
		/* 자바스크립트 문법으로 뽑아내는법 
		let pTag = document.getElementsByTagName("p")
		let html = pTag[0].innerHTML
		let text = pTag[0].innerText
		 */
		 
		 // Jquery 문법으로 뽑아내는법 
		 let html = $('p').html()		// 첫번째 p만 
		 let html2 = $('p').eq(1).html()	// 두번째 p만 
		 let text = $('p').text()		// 여러개의 p가 mark up을 뺀채로 모두 나옴  
		 
		 alert('추출된 html : ' + html + '\n추출된 text : ' + text)
		
		
		/* 자바스크립트 문법으로 속성 추출하는법 
		let aTag = document.querySelector('a')
		let attr = aTag.getAttribute('href')
		 */
		 
		 // Jquery 문법으로 속성 추출하는법 
		 let attr = $('a').attr('href')
		alert('추출된 attr : ' + attr)
		
		$('button').click(function() {
 			/* 
			let inputTag = document.getElementById("name")
			let name = inputTag.value
			 */
			let name = $('#name').val()		// jquery에서 value 뽑아내는 기능 (input 태그만 value 속성이 있는듯)
			alert('입력된 이름 : ' + name)
			 
 		})
		
	})
```

```javascript
$(document).ready(function() {
		
		$('#btn01').click(function() {
			$('#p01').text('<mark>문장이 변화되었습니다.</mark>')	// text()를 그냥쓰면 getter, 인자에 넣어주면 setter로 쓰임 
		})
		
		$('#btn02').click(function() {
			$('#p02').html('<mark>문장이 변환되었습니다.</mark>')	// <mark> : 형광펜 표시 
		})
		
		$('#btn03').click(function() {
			$('a').attr('href', 'http://www.daum.net')		// attr 메소드의 두번째 인자에 수정할 url을 주면 바로 변경 가능 
		})
		
		$('#btn04').click(function() {
			$('p').html(function(index) {	// 'p' 객체가 가지고있는 배열이 날라와 인덱스별로 하나씩 변환 가능
											// html을 콜백함수로 index를 0번지, 1번지 보내주면 p객체의 0번지의 innerHTML는 이거야, 이걸 뭘로 바꿔~ 라고 얘기하게됨. 
				return (index + 1) + ' : <em>문장변환</em>'	
			})
		})
	})
```



# 브라우저 객체 (DOM)

## load, resize, scroll

- `load` : 브라우저 창 로드시
- `resize` : 브라우저 창 사이즈 조절시
- `scroll` : 브라우저 창 스크롤시

```javascript
$(window).load(function() {		// 브라우저 창 로드시 
		console.log('load...')
})
	
$(window).resize(function() {	// 브라우저 창 사이즈 조절시 
	console.log('resize...')
})
	
$(window).scroll(function() {	// 브라우저 창 스크롤시 
	console.log('scroll...')
})
```



# Jquery UI

![스크린샷 2020-06-23 오전 10.55.23](Jquery_시험대비.assets/스크린샷 2020-06-23 오전 10.55.23.png)

- Jquery 사이트 -> jquery UI에서 원하는 효과를 검색해 CDM src가 필요한 경우 복붙해주고 사용 가능. 

