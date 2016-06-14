<!DOCTYPE html>
<head>
	<meta charset="utf-8" />
	<title>登录</title>
	<link href="/static/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	<style type="text/css">
	body {background:#444}
	p {}
	.main {width:350px; margin:100px auto 0 auto; color:#888; overflow:hidden;}
	.loginform {width:100%; background:#fff; color:#333}
	fieldset {margin:20px;}
	</style>
</head>

<div class="main">
	<div class="loginform">

	<form method="post">
		<input type="hidden" name="isajax" value="1" />
	<fieldset>
		<legend>后台登录</legend>
		
		{{if .errmsg}}
		<div class="alert alert-error">
		<button type="button" class="close" data-dismiss="alert">&times;</button>
		{{.errmsg}}
		</div>
		{{end}}		

		<label for="account">帐号</label>
		<input type="text" name="account" class="input-xlarge" id="account" />
		<label for="password">密码</label>
		<input type="password" id="password" name="password" class="input-xlarge" />
		<label for="yzm">验证码</label>
		<input type="text" id="yzm" name="yzm" class="input-xlarge" />
	    	{{create_captcha}}
		<label class="checkbox">
		  <input type="checkbox" id="remember" name="remember" value="yes"> 记住我一周
		</label>
		<p><button type="submit" class="btn btn-success">登 录</button></p>
		<hr />
	</fieldset>
	</form>
	</div>
</div>

</body>
</html>