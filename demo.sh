if [ -d $1 ]; then
  echo "$1 exist "
  exit
else
  mkdir $1
  cd $1
  mkdir css js
  touch index.html css/style.css js/main.js
  echo "$1 sueess"
  echo  '<!DOCTYPE>
         <title>Hello</title>
	 <link rel="stylesheet" href="css/style.css">
         <h1>Hi</h1>
	 <script src="js/main.js"></script>' >> index.html
  echo  'h1{color: red;}' >> css/style.css
  echo  'var string = "Hello World" 
         alert(string)'  >> js/main.js
  exit
fi

