<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <title>Simple Login Layout</title>
        <link rel="stylesheet" href="./css/bootstrap.min.css" />
        <link rel="stylesheet" href="./css/Login.css" />
        <link rel="stylesheet" href="./css/FishTank.css" />
        <link href="https://fonts.googleapis.com/css2?family=ADLaM+Display&display=swap" rel="stylesheet" />
    </head>
    <body>
        <div class="container-fluid">
            <div class="row full-height">
                <div class="col-md-5 left">
                    <img src="./Sources/LoginSources/real_back.jpg" alt="alt"/>
                    <h3 class="left_first_prompt">Start New Journey!</h3>
                    <p class="left_second_prompt">You don't have an account yet?</p>
                    <input type="submit" value="Sign Up" id="signUp"/>

                </div>

                <div class="col-md-7 right fish-container">
                    <canvas id="fishCanvas"></canvas>

                    <h3 class="right_first_prompt">Sign In</h3>
                    <div class="logo_container">
                        <a class="logo" href="">
                            <img src="./Sources/LoginSources/facebook.png" alt="facebook_icon" />
                        </a>
                        <a class="logo" href="">
                            <img src="./Sources/LoginSources/google.png" alt="google_icon" />
                        </a>
                        <a class="logo" href="">
                            <img src="./Sources/LoginSources/linkin.png" alt="linkin_icon" />
                        </a>
                    </div>
                    <div class="form_container">
                        <div class="input_group">
                            <img src="./Sources/LoginSources/user.png" class="input_icon" alt="user" />
                            <input type="text" placeholder="User Name"/>
                        </div>

                        <div class="input_group">
                            <img src="./Sources/LoginSources/lock.png" class="input_icon" alt="lock" />
                            <input type="password" placeholder="Password" />
                        </div>


                        <a href="#" id="forgot-link">Forgot your password?</a>
                        <br>
                        <button class="signIn-btn" >Sign In</button>
                    </div>
                </div>
            </div>
        </div>

        <script src="./js/FishTank.js"></script>
    </body>
</html>
