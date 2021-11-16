﻿<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Daily UI :: 001 - Sign Up Page</title>
  
  <link rel="stylesheet" href="css/login-reset.min.css">
  <link rel='stylesheet prefetch' href='css/login-ionicons.min.css'>
  <link rel="stylesheet" href="css/login-style.css">

  
</head>

<body>

  <div id="page-wrapper">
      <div id="modal-wrapper">
        <div id="modal">
          <div id="cards">
            <div class="card" id="login">
              <div class="box">
                <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="84px" height="70px" viewBox="0 0 600 332" enable-background="new 0 0 600 332" xml:space="preserve">
                  <path id="SVGID_1_" d="M48.207,322.346H2.201l195.546-296.91l29.083,24.881L48.207,322.346L48.207,322.346z M366.916,323.3L184.581,45.545l22.235-34.362l182.337,277.754L366.916,323.3L366.916,323.3z M206.816,322.346c0,0-32.511-50.283-67.621-102.999c-7.233-10.859-14.576-21.821-21.768-32.47c-0.586-0.867,14.985-46.926,21.658-36.678c7.217,11.086,14.388,22.232,21.347,33.138c36.734,57.58,67.509,108.465,67.509,108.465L206.816,322.346L206.816,322.346z M313.043,162.238l-39.053,59.399c-31.744,48.284-57.467,87.41-57.467,87.41l-31.942-22.019c0,0,29.998-44.644,67.215-101.253c5.132-7.806,10.351-15.742,15.577-23.694c4.91-7.47,9.831-14.953,14.699-22.356C321.356,79.969,366.42,11.184,366.42,11.184h45.049C411.469,11.184,353.769,100.292,313.043,162.238L313.043,162.238z M375.986,309.048l-29.083-24.882L526.486,11.184h45.046L375.986,309.048L375.986,309.048z"></path>
                </svg>
              </div>
              <form id="login-form">
                <label>Email
                  <a href="#" title="Forgot email?" class="tip">Forgot email?</a>
                </label>
                <input type="text" id="login-email" class="textbox">
                <label>Password
                  <a href="#" title="Forgot password?" class="tip">Forgot password?</a>
                </label>
                <input type="password" id="login-password" class="textbox">
              </form>
              <button type="submit" class="proceed">Log-in to your account <i class="ion-ios-arrow-thin-right"></i></button>
            </div>
            <div class="card" id="register">
              <div class="box">
              <div id="branding-small">
                <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="42px" height="35px" viewBox="0 0 600 332" enable-background="new 0 0 600 332" xml:space="preserve">
                  <path id="SVGID_1_" d="M48.207,322.346H2.201l195.546-296.91l29.083,24.881L48.207,322.346L48.207,322.346z M366.916,323.3L184.581,45.545l22.235-34.362l182.337,277.754L366.916,323.3L366.916,323.3z M206.816,322.346c0,0-32.511-50.283-67.621-102.999c-7.233-10.859-14.576-21.821-21.768-32.47c-0.586-0.867,14.985-46.926,21.658-36.678c7.217,11.086,14.388,22.232,21.347,33.138c36.734,57.58,67.509,108.465,67.509,108.465L206.816,322.346L206.816,322.346z M313.043,162.238l-39.053,59.399c-31.744,48.284-57.467,87.41-57.467,87.41l-31.942-22.019c0,0,29.998-44.644,67.215-101.253c5.132-7.806,10.351-15.742,15.577-23.694c4.91-7.47,9.831-14.953,14.699-22.356C321.356,79.969,366.42,11.184,366.42,11.184h45.049C411.469,11.184,353.769,100.292,313.043,162.238L313.043,162.238z M375.986,309.048l-29.083-24.882L526.486,11.184h45.046L375.986,309.048L375.986,309.048z"></path>
                </svg>
              </div>
                <div class="box-header">Register</div>
                <form id="register-form">
                  <label>Email</label>
                  <input type="text" id="register-email" class="textbox">
                  <label>Password</label>
                  <input type="password" id="register-password" class="textbox">
                  <label>Confirm Password</label>
                  <input type="password" id="register-password-conf" class="textbox">
                </form>
              </div>
              <button type="submit" class="proceed">Create an account <i class="ion-ios-arrow-thin-right"></i></button>
            </div>
          </div>
          <div id="toggle-tabs">
            <div class="tab" id="toggle-login">Sign In</div>
            <div class="tab" id="toggle-register">Register</div>
          </div>
        </div>
      </div>
    </div>
  
	
	
  <script src='js/login-jquery.min.js'></script>
  <script src="js/login-index.js"></script>




</body>

</html>
