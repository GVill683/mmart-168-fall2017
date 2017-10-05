# 1. Create new files and directories:
echo -n "Enter your name of your new project folder and press [ENTER]: "
read folder_name
mkdir $folder_name
mkdir $folder_name/css
mkdir $folder_name/scripts
mkdir $folder_name/assets
touch $folder_name/css/style.css
touch $folder_name/scripts/main.js
touch $folder_name/index.html

# 2. Add some starter text to the HTML file:
echo '<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>My Project</title>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />
        <link href="css/style.css" rel="stylesheet" />
    </head>
    <body>
        <h1>Your First Project</h1>


        <script src="scripts/main.js"></script>
    </body>
</html>' > $folder_name/index.html

# 3. Add some default/starter text to the style.css file:
echo 'body {
   font-size: 20px;
   font-family: Arial;
   background: #F0F0F0;
   color: #444;
}' > $folder_name/css/style.css

# 4. Add a test JavaScript command to the main.js file:
echo 'console.log("Hello there!");' > $folder_name/scripts/main.js

# 5. Open your HTML file in the browser:
open $folder_name/index.html
