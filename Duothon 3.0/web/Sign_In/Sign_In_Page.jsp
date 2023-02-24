<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script
      src="https://kit.fontawesome.com/64d58efce2.js"
      crossorigin="anonymous"
    ></script>
    <link rel="stylesheet" href="style.css" />
    <title>Sign in & Sign up Form</title>
    
  </head>
  <body>
    <div class="container">
      <div class="forms-container">
        <div class="signin-signup">
            
            
            <form action="Action_Sign_In_page.jsp" method="" class="sign-in-form">
            
              <h2 class="title">Sign In</h2>
            <div class="input-field">
              <i class="fas fa-user"></i>
              <input type="text" name="name" placeholder="Email" />
            </div>
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="password" name="psw" placeholder="Password" />
            </div>
            <input type="submit" value="Login" class="btn solid" />
            <p class="social-text">Or Sign up with social platforms</p>
           
            
            
            
            <%
      String msg = request.getParameter("msg");
      
      if("notexist".equals(msg)){
          %><h3>Incorrect Username or Password</h3>
          <%
      }
      %>
      
      <%
      if("invalid".equals(msg)){
          %>><h3>Some thing Went Wrong! Try Again !</h3>
          <%
      }
      %>
          </form>
            
            
          <form action="Action_Sign_Up.jsp" method="" class="sign-up-form">
              
            <h2 class="title">Sign up</h2>
            <div class="input-field">
              <i class="fas fa-user"></i>
              <input type="text" name="uname" placeholder="Pharmacy Name" />
            </div>
            
            <div class="input-field">
              <i class="fas fa-envelope"></i>
              <input type="email" name="email" placeholder="Email" />
            </div>
            
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="text" name="add" placeholder="address" />
            </div>
            
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="text" name="tel" placeholder="Mobile Number" />
            </div>
            
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="text" name="lic" placeholder="Pharmacy License Number" />
            </div>
            
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="password" name="psw" placeholder="Password" />
            </div>
            
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="password" name="psw" placeholder="Conform Password" />
            </div>
            
            <div>
              <input type="checkbox" name="check" /> I Agree to <a href="">Terms of Service</a> and <a href="">privacy policy</a>. 
            </div>
            
            <input type="submit" class="btn" value="Sign up" />
            
            
            
            <p>Already have an account? <a href="">Sign In</a></p>
            
            
            
            
            
            
             <%
                String msg2= request.getParameter("msg2");

                     if("valid".equals(msg2)){
                %>         <h1>Successfully Updated</h1>
                <%
                     }

                     if("invalid".equals(msg2)){
             %>        <h1>Some thing Went Wrong! Try Again !</h1>
             <%
             }
                %> 
          </form>
        </div>
      </div>

      <div class="panels-container">
        <div class="panel left-panel">
          <div class="content">
            <h3>Welcome Back,</h3>
            <p>
              Sign in to continue access
            </p>
            <button class="btn transparent" id="sign-up-btn">
              Sign up
            </button>
          </div>
            <img src="" class="image" alt="" />
        </div>
        <div class="panel right-panel">
          <div class="content">
            <h3>One of us ?</h3>
            <p>
              Make the most of your professional life!!!
            </p>
            <button class="btn transparent" id="sign-in-btn">
              Sign in
            </button>
          </div>
            <img src="image/c2.jpg" class="image" alt="" style="size: 100px"/>
        </div>
      </div>
    </div>

    <script src="app.js"></script>
  </body>
</html>
