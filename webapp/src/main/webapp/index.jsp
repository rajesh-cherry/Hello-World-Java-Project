
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: linear-gradient(135deg, #667eea, #764ba2);
        }

        .login-container {
            width: 350px;
            padding: 35px;
            background: white;
            border-radius: 12px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.2);
        }

        h2 {
            text-align: center;
            margin-bottom: 10px;
            color: #333;
        }

        .subtitle {
            text-align: center;
            color: #777;
            margin-bottom: 25px;
            font-size: 14px;
        }

        label {
            display: block;
            margin-bottom: 7px;
            color: #333;
            font-size: 14px;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 18px;
            border: 1px solid #ccc;
            border-radius: 6px;
            outline: none;
        }

        input:focus {
            border-color: #667eea;
        }

        .show-password {
            margin-top: -8px;
            margin-bottom: 18px;
            font-size: 13px;
        }

        .login-btn {
            width: 100%;
            padding: 12px;
            border: none;
            border-radius: 6px;
            background: #667eea;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }

        .login-btn:hover {
            background: #5267d5;
        }

        .forgot-password {
            text-align: center;
            margin-top: 18px;
        }

        .forgot-password a {
            color: #667eea;
            text-decoration: none;
            font-size: 14px;
        }

        .signup {
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
            color: #666;
        }

        .signup a {
            color: #667eea;
            text-decoration: none;
        }

        #message {
            margin-top: 15px;
            text-align: center;
            font-size: 14px;
        }
    </style>
</head>

<body>
<h4>Sample JAVA Project using maven </h4>

    <div class="login-container">
        <h2>Welcome Back!</h2>
        <p class="subtitle">Please log in to your account</p>

        <form id="loginForm">
            <label for="username">Username</label>
            <input
                type="text"
                id="username"
                placeholder="Enter your username"
                required
            >

            <label for="password">Password</label>
            <input
                type="password"
                id="password"
                placeholder="Enter your password"
                required
            >

            <div class="show-password">
                <input type="checkbox" id="showPassword">
                <label for="showPassword" style="display:inline">
                    Show password
                </label>
            </div>

            <button type="submit" class="login-btn">
                Login
            </button>

            <p id="message"></p>
        </form>

        <div class="forgot-password">
            <a href="#" onclick="alert('Please contact the administrator to reset your password.'); return false;">
                Forgot Password?
            </a>
        </div>

        <div class="signup">
            Don't have an account? <a href="#">Sign Up</a>
        </div>
    </div>

    <script>
        const password = document.getElementById("password");
        const showPassword = document.getElementById("showPassword");
        const loginForm = document.getElementById("loginForm");
        const message = document.getElementById("message");

        showPassword.addEventListener("change", function () {
            password.type = this.checked ? "text" : "password";
        });

        loginForm.addEventListener("submit", function (event) {
            event.preventDefault();

            message.style.color = "#d97706";
            message.textContent =
                "Login form ready. Connect a backend to authenticate users.";
        });
    </script>

</body>
</html>
