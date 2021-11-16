<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Now, Login!</title>

</head>

<body>

	<div id="page-wrapper">
		<div id="modal-wrapper">
			<div id="modal">
				<div id="cards">
					<div class="card" id="login">
						<div class="box">
							<img src="image/atmm.png" style="width: 70px;" />
						</div>
						<form action="user_checkpass.asp" method="post">
							<div id="login-form">
								<label>
									昵 称/帐 号
                  <a href="management_login.asp" title="Forgot email?" class="tip">管理员登录</a>
								</label>
								<input type="text" id="login-email" name="user_login" class="textbox">
								<label>
									密 码
                  <a href="#" title="Forgot password?" class="tip">忘记密码？</a>
								</label>
								<input type="password" id="login-password" name="user_password" class="textbox">
							</div>
							<button type="submit" class="proceed">现在，登录你的帐号
								<img src="image/skip.png" style="width: 15px;"></button>
						</form>
					</div>
					<div class="card" id="register">
						<form action="user_register_save.asp" method="post">
							<div class="box">
								<div id="branding-small">
									<img src="image/atmm.png" style="width: 42px;" />
								</div>
								<div class="box-header">注  册</div>
								<div id="register-form">
									<label>昵称</label>
									<input type="text" id="user_Uname" name="Uname" class="textbox">

									<label>QQ</label>
									<input type="text" id="" name="Uqq" class="textbox">
									<label>Email</label>
									<input type="text" id="register-email" name="Uemail" class="textbox">


									<label>密码</label>
									<input type="password" id="register-password" name="Upassword" class="textbox">
									<label>确认密码</label>
									<input type="password" id="register-password-conf" name="Upassword_check" class="textbox">
								</div>

							</div>
							<button type="submit" class="proceed">创建你的帐号
								<img src="image/skip.png" style="width: 15px;"></button>
						</form>
					</div>
				</div>
				<div id="toggle-tabs">
					<div class="tab" id="toggle-login">登 录</div>
					<div class="tab" id="toggle-register">注 册</div>
				</div>
			</div>
		</div>
	</div>



	<script src='js/login-jquery.min.js'></script>
	<script src="js/login-index.js"></script>




</body>

</html>
