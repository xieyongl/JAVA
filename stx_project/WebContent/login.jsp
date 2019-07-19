<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en_US">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>登录</title>
    <link rel="stylesheet" href="assets/css/normalize.css">
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="assets/css/sign-up-login.css">
    <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.4.6.0.css">
    <link rel="stylesheet" href="assets/css/inputEffect.css"/>
    <link rel="stylesheet" href="assets/css/verifyCode.css"/>
    <link rel="stylesheet" href="assets/css/tooltips.css"/>
    <link rel="stylesheet" href="assets/css/spop.min.css"/>

    <script src="assets/js/jquery-1.10.2.js"></script>
    <script src="assets/js/snow.js"></script>
    <script src="assets/js/jquery.pure.tooltips.js"></script>
    <script src="assets/js/verifyCode.js"></script>
    <script src="assets/js/spop.min.js"></script>
    <script src="js/login.js"></script>
    <script src="assets/js/jquery.cookie.js"></script>

    <style type="text/css">
        html {
            width: 100%;
            height: 100%;
        }
        body {
            background-repeat: no-repeat;
            background-position: center center;
            background-color: #00BDDC;
            background-image: url(images/snow.jpg);
            background-size: 100% 100%;
        }
        .snow-container {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            pointer-events: none;
            z-index: 100001;
        }
    </style>

</head>
<body>
<!-- 雪花背景 -->
<div class="snow-container"></div>
<!-- 登录控件 -->
<div id="login">
    <input id="tab-1" type="radio" name="tab" class="sign-in hidden" checked/>
    <input id="tab-2" type="radio" name="tab" class="sign-up hidden"/>
    <input id="tab-3" type="radio" name="tab" class="sign-out hidden"/>
    <div class="wrapper">
        <!-- 登录页面 -->
        <div class="login sign-in-htm">
            <form class="container offset1 loginform" action="/stx_project/login" method="post">
                <!-- 猫头鹰控件 -->
                <div id="owl-login" class="login-owl">
                    <div class="hand"></div>
                    <div class="hand hand-r"></div>
                    <div class="arms">
                        <div class="arm"></div>
                        <div class="arm arm-r"></div>
                    </div>
                </div>
                <div class="pad input-container">
                    <section class="content">
                            <!--用户名-->
                        <span class="input input--hideo">
                            <input class="input__field input__field--hideo" type="text" id="login-username"
                                       autocomplete="off" placeholder="请输入用户名" tabindex="1" maxlength="15" name="user_name"/>
                            <label class="input__label input__label--hideo" for="login-username">
                                <i class="fa fa-fw fa-user icon icon--hideo"></i>
                                <span class="input__label-content input__label-content--hideo"></span>
                            </label>
							</span>
                        <!--密码-->
                        <span class="input input--hideo">
								<input class="input__field input__field--hideo" type="password" id="login-password"
                                       placeholder="请输入密码" tabindex="2" maxlength="15" name="pass_word"/>
								<label class="input__label input__label--hideo" for="login-password">
									<i class="fa fa-fw fa-lock icon icon--hideo"></i>
									<span class="input__label-content input__label-content--hideo"></span>
								</label>
							</span>
                        <!--验证码-->
                        <span class="input input--hideo input--verify_code">
								<input class="input__field input__field--hideo" type="text" id="login-verify-code"
                                       autocomplete="off" placeholder="请输入验证码" tabindex="3" maxlength="4" name="regist_code"/>
								<label class="input__label input__label--hideo" for="login-verify-code">
									<i class="fa fa-fw fa-bell-o icon icon--hideo"></i>
									<span class="input__label-content input__label-content--hideo"></span>
								</label>								
							</span>
                        <canvas class="verify-code-canvas" id="login-verify-code-canvas"></canvas>
                    </section>
                </div>
                <div class="form-actions">
                    <a tabindex="4" class="btn pull-left btn-link text-muted" onclick="goto_forget()">忘记密码?</a>
                    <a tabindex="5" class="btn btn-link text-muted" onclick="goto_register()">注册</a>
                    <input class="btn btn-primary" id="loginButton" type="submit" tabindex="3" onclick="login()" value="登录" style="color:white;"/>
                </div>
            </form>
            <p class="alert"></p>
        </div>
        <!-- 忘记密码页面 -->
        <div class="login sign-out-htm">
            <form action="#" method="post" class="container offset1 loginform">
                <!-- 猫头鹰控件 -->
                <div id="owl-login" class="forget-owl">
                    <div class="hand"></div>
                    <div class="hand hand-r"></div>
                    <div class="arms">
                        <div class="arm"></div>
                        <div class="arm arm-r"></div>
                    </div>
                </div>
                <div class="pad input-container">
                    <section class="content">
							<span class="input input--hideo">
								<input class="input__field input__field--hideo" type="text" id="forget-username"
                                       autocomplete="off" placeholder="请输入用户名"/>
								<label class="input__label input__label--hideo" for="forget-username">
									<i class="fa fa-fw fa-user icon icon--hideo"></i>
									<span class="input__label-content input__label-content--hideo"></span>
								</label>
							</span>
                        <span class="input input--hideo">
								<input class="input__field input__field--hideo" type="text" id="forget-code"
                                       autocomplete="off" placeholder="请输入注册码"/>
								<label class="input__label input__label--hideo" for="forget-code">
									<i class="fa fa-fw fa-wifi icon icon--hideo"></i>
									<span class="input__label-content input__label-content--hideo"></span>
								</label>
							</span>
                        <span class="input input--hideo">
								<input class="input__field input__field--hideo" type="password" id="forget-password"
                                       placeholder="请重置密码"/>
								<label class="input__label input__label--hideo" for="forget-password">
									<i class="fa fa-fw fa-lock icon icon--hideo"></i>
									<span class="input__label-content input__label-content--hideo"></span>
								</label>
							</span>
                    </section>
                </div>
                <div class="form-actions">
                    <a class="btn pull-left btn-link text-muted" onclick="goto_login()">返回登录</a>
                    <input class="btn btn-primary" type="button" onclick="forget()" value="重置密码"
                           style="color:white;"/>
                </div>
            </form>
        </div>

        <!-- 注册页面 -->
        <div class="login sign-up-htm">
            <form action="/stx_project/regist" method="post" class="container offset1 loginform">
                <!-- 猫头鹰控件 -->
                <div id="owl-login" class="register-owl">
                    <div class="hand"></div>
                    <div class="hand hand-r"></div>
                    <div class="arms">
                        <div class="arm"></div>
                        <div class="arm arm-r"></div>
                    </div>
                </div>
                <div class="pad input-container">
                    <section class="content">
							<span class="input input--hideo">
								<input class="input__field input__field--hideo" type="text" id="register-username"
                                       autocomplete="off" placeholder="请输入用户名" maxlength="15" name="user_name"/>
								<label class="input__label input__label--hideo" for="register-username">
									<i class="fa fa-fw fa-user icon icon--hideo"></i>
									<span class="input__label-content input__label-content--hideo"></span>
								</label>
							</span>
                        <span class="input input--hideo">
								<input class="input__field input__field--hideo" type="password" id="register-password"
                                       placeholder="请输入密码" maxlength="15" name="pass_word"/>
								<label class="input__label input__label--hideo" for="register-password">
									<i class="fa fa-fw fa-lock icon icon--hideo"></i>
									<span class="input__label-content input__label-content--hideo"></span>
								</label>
							</span>
                        <span class="input input--hideo">
								<input class="input__field input__field--hideo" type="password" id="register-repassword"
                                       placeholder="请确认密码" maxlength="15" name="pass_word1"/>
								<label class="input__label input__label--hideo" for="register-repassword">
									<i class="fa fa-fw fa-lock icon icon--hideo"></i>
									<span class="input__label-content input__label-content--hideo"></span>
								</label>
							</span>
                        <span class="input input--hideo">
								<input class="input__field input__field--hideo" type="text" id="register-phone"
                                       autocomplete="off" placeholder="请输入手机号码" name="phone_number"/>
								<label class="input__label input__label--hideo" for="register-phone">
									<i class="fa fa-fw fa-phone icon icon--hideo"></i>
									<span class="input__label-content input__label-content--hideo"></span>
								</label>
							</span>
                        <span class="input input--hideo">
								<input class="input__field input__field--hideo" type="text" id="register-email"
                                       autocomplete="off" placeholder="请输入邮箱" name="user_email"/>
								<label class="input__label input__label--hideo" for="register-email">
									<i class="fa fa-fw fa-envelope icon icon--hideo"></i>
									<span class="input__label-content input__label-content--hideo"></span>
								</label>
							</span>
                        <span class="input input--hideo">
								<input class="input__field input__field--hideo" type="text" id="register-code"
                                       autocomplete="off" placeholder="请输入验证码"/>
								<label class="input__label input__label--hideo" for="register-code">
									<i class="fa fa-fw fa-lock icon icon--hideo"></i>
									<span class="input__label-content input__label-content--hideo"></span>
								</label>
							</span>
                    </section>
                </div>
                <div class="form-actions">
                    <a class="btn pull-left btn-link text-muted" onclick="goto_login()">返回登录</a>
                    <input class="btn btn-primary" type="button" onclick="getcode()" value="获取验证码"
                           style="color:white;"/>
                    <input class="btn btn-primary" type="submit" onclick="register()" value="注册"
                           style="color:white;"/>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
<script type="text/javascript">
    $(document).ready(function () {
        $("#/admin/index.jsp")
    })
</script>
</html>