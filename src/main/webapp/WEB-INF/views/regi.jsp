<%@page import="mul.cam.a.util.Utility"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.mysql.cj.util.Util"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
<style type="text/css">
html, body {
	width: 100%;
}

body, div, ul, li {
	margin: 0;
	padding: 0;
	justify-content: center;
}

}
ul, li {
	list-style: none;
}

/*tab css*/
.tab {
	float: left;
	width: 600px;
	height: 290px;
}

.tabnav {
	font-size: 0;
	width: 600px;
	border: 1px solid #ddd;
}

.tabnav li {
	display: inline-block;
	height: 50px;
	width: 50%;
	text-align: center;
	border-right: 1px solid #ddd;
	text-align: center;
}

.tabnav li a:before {
	content: "";
	position: absolute;
	left: 0;
	top: 0px;
	width: 100%;
	height: 3px;
}

.tabnav li a.active:before {
	background: blue;
}

.tabnav li a.active {
	border-bottom: 1px solid #fff;
}

.tabnav li a {
	position: relative;
	display: block;
	background: #f8f8f8;
	color: #000;
	padding: 0 30px;
	line-height: 46px;
	text-decoration: none;
	font-size: 16px;
}

.tabnav li a:hover, .tabnav li a.active {
	background: #fff;
	color: #7ea21e;
}

.tabcontent {
	padding: 20px;
	height: 450px;
	border: 1px solid #ddd;
	border-top: none;
}
</style>

</head>
<body>
<script type="text/javascript">
$(function() {
	$('.tabcontent > div').hide();
	$('.tabnav a').click(function() {
		$('.tabcontent > div').hide().filter(this.hash).fadeIn();
		$('.tabnav a').removeClass('active');
		$(this).addClass('active');
		return false;
	}).filter(':eq(0)').click();
});



</script>

	<article class="card-body mx-auto" style="max-width: 600px;">

		<h4 class="card-title mt-3 text-center">????????????</h4>


		<div class="tab" align="center">
			<ul class="tabnav">
				<li><a href="#tab01">????????????</a></li>
				<li><a href="#tab02">????????????</a></li>
			</ul>
			<div class="tabcontent" align="center">
				<div id="tab01">
					<form action="regiAf.do" method="post" id="regiForm1">
						<div class="form-group input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"> <i class="fa fa-user"></i>
								</span>
							</div>
							<input id ="id" name="id" class="form-control" placeholder="?????????" type="text">
							<button type="button" id="idChkBtn" class="btn btn-danger">id check</button>
						</div>
						<!-- form-group// -->

						<p id="idcheck" style="margin-left: 10px;"></p>
						<div class="form-group input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"> <i class="fa fa-user"></i>
								</span>
							</div>
							<input id="name" name="name" class="form-control" placeholder="??????" type="text">
						</div>
						<div class="form-group input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"> <i class="fa fa-envelope"></i>
								</span>
							</div>
							<input id="email" name="email" class="form-control" placeholder="?????????" type="email">
						</div>

						<div class="form-group input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"> <i class="fa fa-lock"></i>
								</span>
							</div>
							<input id="pw1" name="pwd" class="form-control" placeholder="????????????" type="password">
						</div>
						<!-- form-group// -->

						<div class="form-group input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"> <i class="fa fa-lock"></i>
								</span>
							</div>
							<input id="pw2" class="form-control" placeholder="???????????? ??????" type="password">

						</div>
						<p id="pw_ck" style="margin-left: 10px;"></p>
						<!-- form-group// -->

						<div class="form-group"></div>
						<!--tab-->
						<input type="button" id ="regi1Btn1" class="btn btn-primary btn-block" value="Create Account">
						<div>
							<p class="text-center">
								Have an account? <a href="login.do">Log In</a>
							</p>
						</div>

					</form>
				</div>


				<!--  -->
				<!--  -->



				<div id="tab02">
					<form action="regiAfBiz.do" method="post"  id="regiForm2">
						<div class="form-group input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"> <i class="fa fa-user"></i>
								</span>
							</div>
							<input id=companyId name="id" class="form-control" placeholder="???????????? ????????? ?????????" type="text">
							<button type="button" id="BizidChkBtn" class="btn btn-danger">id check</button>
						</div>
						<p id="Bizidcheck" style="margin-left: 10px;"></p>


						<div class="form-group input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"> <i class="fa fa-user"></i>
								</span>
							</div>
							<input id=company name="company" class="form-control" placeholder="?????? ??????" type="text">
						</div>
						<!-- form-group// -->

						<p id="idcheck" style="margin-left: 10px;"></p>

						<div class="form-group input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"> <i class="fa fa-envelope"></i>
								</span>
							</div>
							<input id="Bizemail" name="email" class="form-control" placeholder="???????????????" type="email">
						</div>
						<!-- form-group// -->

						<div class="form-group input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"> <i class="fa fa-phone"></i>
								</span>
							</div>
							<input type="text" id="contact" name="contact" class="form-control" maxlength="13" placeholder=" '-' ?????? ????????? ??????????????????" onkeyup="chk_tel(this.value,'contact')">
						</div>
						<!-- form-group end.// -->
						<div class="form-group input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"> <i class="fa fa-lock"></i>
								</span>
							</div>
							<input id="biz_pw1" name="pwd" class="form-control" placeholder="????????????" type="password">
						</div>
						<!-- form-group// -->

						<div class="form-group input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"> <i class="fa fa-lock"></i>
								</span>
							</div>
							<input id="biz_pw2" class="form-control" placeholder="???????????? ??????" type="password">
						</div>
						<p id="biz_pw_ck" style="margin-left: 10px;"></p>
						<!-- form-group// -->

						<div class="form-group"></div>
						<!--tab-->
						<button type="button" id="regi1Btn2"class="btn btn-primary btn-block">Create Account</button>
						<div>
							<p class="text-center">
								Have an account? <a href="login.do">Log In</a>
							</p>
						</div>
					</form>
				</div>
			</div>
		</div>
		<!-- form-group// -->
	</article>

	<script type="text/javascript">
	
	
		//????????????  ????????? ?????? ??????
		$(document).ready(function() {

			$("#BizidChkBtn").click(function() {
				// id??? ????????? ??????!

				$.ajax({
					type : "post",

					url : "idcheck.do",
					data : {
						"id" : $("#companyId").val()
					},

					success : function(msg) {
						if (msg == "YES") {
							$("#Bizidcheck").css("color", "#0000ff");
							$("#Bizidcheck").text("????????? ??? ?????? ??????????????????");
						} else {
							$("#Bizidcheck").css("color", "#ff0000");
							$("#Bizidcheck").text("???????????? ??????????????????");
							$("#companyId").val("");
						}
					},
					error : function() {
						alert('error');
					}
				});
			});
		});

		//???????????? ????????? ?????? ??????
		$(document).ready(function() {

			$("#idChkBtn").click(function() {
				// id??? ????????? ??????!

				$.ajax({
					type : "post",

					url : "idcheck.do",
					data : {
						"id" : $("#id").val()
					},
					success : function(msg) {
						if (msg == "YES") {
							$("#idcheck").css("color", "#0000ff");
							$("#idcheck").text("????????? ??? ?????? ??????????????????");
						} else {
							$("#idcheck").css("color", "#ff0000");
							$("#idcheck").text("???????????? ??????????????????");
							$("#id").val("");
						}
					},
					error : function() {
						alert('error');
					}
				});
			});
		});

		

		// ???????????? ???????????? ??????
		$(function() {
			$('#pw1').keyup(function() {
				$('#pw_ck').text('');
			});

			$('#pw2').keyup(function() {

				if ($('#pw1').val() != $('#pw2').val()) {
					$("#pw_ck").css("color", "#ff0000");
					$('#pw_ck').text('???????????? ???????????? ??????');

				} else {
					$("#pw_ck").css("color", "#0000ff");
					$('#pw_ck').text('???????????? ??????');

				}

			});
		});
		// ???????????? ???????????? ??????
		$(function() {
			$('#biz_pw1').keyup(function() {
				$('#biz_pw_ck').text('');
			});

			$('#biz_pw2').keyup(function() {

				if ($('#biz_pw1').val() != $('#biz_pw2').val()) {
					$("#biz_pw_ck").css("color", "#ff0000");
					$('#biz_pw_ck').text('???????????? ???????????? ??????');

				} else {
					$("#biz_pw_ck").css("color", "#0000ff");
					$('#biz_pw_ck').text('???????????? ??????');

				}

			});
		});

//???????????? ???????????? ????????????
		$(function() {
			// .submit() -> ?????? form?????? sunmit ???????????? ???????????? ???, ??????
			$("#regi1Btn1").click(function() {
				if ($("#id").val().trim() == "") {
					alert("???????????? ???????????????");
				} else if ($("#name").val().trim() == "") {
					alert("????????? ???????????????");
				} else if ($("#email").val().trim() == "") {
					alert("???????????? ???????????????");
				} else if ($("#pw1").val().trim() == "") {
					alert("??????????????? ???????????????");
				} else if ($("#pw2").val().trim() == "") {
					alert("?????? ??????????????? ???????????????");
				} else if ($("#pw2").val().trim() != $("#pw1").val().trim()) {
					alert("??????????????? ????????????");
				} else {
					$("#regiForm1").submit();
				}
			});
		});

		//???????????? ???????????? ????????????
		$(function() {
			// .submit() -> ?????? form?????? sunmit ???????????? ???????????? ???, ??????
			$("#regi1Btn2").click(function() {
				if ($("#company").val().trim() == "") {
					alert("???????????? ???????????????");
				} else if ($("#companyId").val().trim() == "") {
					alert("???????????? ???????????????");
				} else if ($("#Bizemail").val().trim() == "") {
					alert("???????????? ???????????????");
				} else if ($("#contact").val().trim() == "") {
					alert("??????????????? ???????????????");
				} else if ($("#biz_pw1").val().trim() == "") {
					alert("??????????????? ???????????????");
				} else if ($("#biz_pw2").val().trim() == "") {
					alert("?????? ??????????????? ???????????????");
				} else if ($("#biz_pw2").val().trim() != $("#biz_pw1").val().trim()) {
					alert("??????????????? ????????????");
				} else {
					$("#regiForm2").submit();
				}
			});
		});

		//??????????????? ????????? ???????????? ?????? ??????
		function chk_tel(str, id) {
			str = str.replace(/[^0-9]/g, '');
			var tmp = '';

			if (str.substring(0, 2) == "02") {
				if (str.length < 3) {
					$("#" + id).val(str);
				} else if (str.length < 6) {
					tmp += str.substr(0, 2);
					tmp += '-';
					tmp += str.substr(2);
					$("#" + id).val(tmp);
				} else if (str.length < 10) {
					tmp += str.substr(0, 2);
					tmp += '-';
					tmp += str.substr(2, 3);
					tmp += '-';
					tmp += str.substr(5);
					$("#" + id).val(tmp);
				} else {
					tmp += str.substr(0, 2);
					tmp += '-';
					tmp += str.substr(2, 4);
					tmp += '-';
					tmp += str.substr(6, 4);
					$("#" + id).val(tmp);
				}
			} else {
				if (str.length < 4) {
					$("#" + id).val(str);
				} else if (str.length < 7) {
					tmp += str.substr(0, 3);
					tmp += '-';
					tmp += str.substr(3);
					$("#" + id).val(tmp);
				} else if (str.length < 11) {
					tmp += str.substr(0, 3);
					tmp += '-';
					tmp += str.substr(3, 3);
					tmp += '-';
					tmp += str.substr(6);
					$("#" + id).val(tmp);
				} else {
					tmp += str.substr(0, 3);
					tmp += '-';
					tmp += str.substr(3, 4);
					tmp += '-';
					tmp += str.substr(7);
					$("#" + id).val(tmp);
				}
			}
		}
	</script>
	<!-- ?????? -->
</body>
</html>