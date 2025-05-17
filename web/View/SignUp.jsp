<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Đăng ký tài khoản</title>

        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

        <!-- CSS riêng -->
        <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>
    <body>
        <!-- Canvas nền -->
        <canvas id="fishCanvas"></canvas>

        <!-- Form đăng ký -->
        <div class="form-container">
            <h2 style="color: #b8860b;">Sign Up</h2>
            <form action="register" method="post">

                <div class="input-icon">
                    <i class="fa fa-user"></i>
                    <input type="text" name="name" placeholder="User Name" required>
                </div>

                <div class="input-icon">
                    <i class="fa fa-envelope"></i>
                    <input type="email" name="email" placeholder="Email" required>
                </div>

                <div class="input-icon">
                    <i class="fa fa-lock "></i>
                    <input type="password" id="password" name="password" placeholder="Password" required>
                    <i class="fa fa-eye icon-left toggle-password" onclick="togglePassword('password', this)"></i>
                </div>

                <div class="input-icon">
                    <i class="fa fa-lock "></i>
                    <input type="password" id="confirmPassword" name="confirmPassword" placeholder="Confirm Password" required>
                    <i class="fa fa-eye icon-left toggle-password" onclick="togglePassword('confirmPassword', this)"></i>
                </div>

                <div class="gender-group">
                    <label class="gender-option">
                        <input type="radio" name="gender" value="male" required>
                        <i class="fa-solid fa-person"></i> Male
                    </label>
                    <label class="gender-option">
                        <input type="radio" name="gender" value="female">
                        <i class="fa-solid fa-person-dress"></i> Female
                    </label>
                </div>

                <div class="input-icon">
                    <i class="fa fa-calendar"></i>
                    <input type="date" name="dateOfBirth" required>
                </div>

                <input type="submit" value="Đăng ký">
            </form>

            <% if (request.getAttribute("error") != null) { %>
            <p style="color:red;"><%= request.getAttribute("error") %></p>
            <% } %>

            <div style="text-align: center;">
                <p><a href="Login.jsp">Already have an account? Sign in</a></p>
            </div>
        </div>

        <!-- Script -->
        <script src="./js/FishTank.js"></script>
        <script src="./js/eye.js"></script>
    </body>
</html>
