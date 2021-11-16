<%@  language="VBScript" codepage="65001" %>


<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<meta http-equiv="refresh" content="0;URL=home.asp">
	<!--用于刷新页面-->

	<script type="text/javascript">

		var i = 0;
		var intervalid;
		intervalid = setInterval("fun()", 1000);
		function fun() {
			if (i == 0) {
				window.location.href = "home.asp";    //返回页面
				clearInterval(intervalid);
			}
			document.getElementById("mes").innerHTML = i;
			i--;
		}
	</script>
	<title>登录成功</title>
</head>
<body>
</body>
</html>


