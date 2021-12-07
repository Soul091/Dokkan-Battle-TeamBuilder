<!DOCTYPE html>
<html>
    <head>
        <title>CSE 111 Project</title>
    </head>
    
    <body background = "background.png">
        <h1>Dragon Ball Team Builder Home Page</h1>

        <div clas = "container">

            <div class = "header">
                <h2>Login</h2>
            </div>

            <form action = "HomePage.php" method = "post">

                <div>
                    <label for = "username"> User:  </label>
                    <input type = "text" name ="username" required>
                </div>

                <div>
                    <label for = "password"> Password:  </label>
                    <input type = "text" name ="password" required>
                </div>

                <button type = "submit" name = "login"> Confirm </button>

                <p>Not a user? <a href = "CreateAccount.php"><b> Create Account Here</b></a></p>
                
            </form>







        </div>
    </body>
</html>