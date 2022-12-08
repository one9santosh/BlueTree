
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
     <link rel="icon" type="image/x-icon" href="images/favicon.ico">


<style>
input[type=text] {
  background-color: white;
  background-image: url('searchicon.png');
  background-position: 10px 10px;
  background-repeat: no-repeat;
  padding-left: 40px;
}

.button-36 {
  background-image: linear-gradient(92.88deg, #455EB5 9.16%, #5643CC 43.89%, #673FD7 64.72%);
  border-radius: 8px;
  border-style: none;
  box-sizing: border-box;
  color: #FFFFFF;
  cursor: pointer;
  flex-shrink: 0;
  font-family: "Inter UI","SF Pro Display",-apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,Oxygen,Ubuntu,Cantarell,"Open Sans","Helvetica Neue",sans-serif;
  font-size: 16px;
  font-weight: 500;
  height: 4rem;
  padding: 0 1.6rem;
  text-align: center;
  text-shadow: rgba(0, 0, 0, 0.25) 0 3px 8px;
  transition: all .5s;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
}

.button-36:hover {
  box-shadow: rgba(80, 63, 205, 0.5) 0 1px 30px;
  transition-duration: .1s;
}

@media (min-width: 768px) {
  .button-36 {
    padding: 0 2.6rem;
  }
}

table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
@keyframes color {
  0%   { background: #33CCCC; }
  20%  { background: #33CC36; }
  40%  { background: #B8CC33; }
  60%  { background: #FCCA00; }
  80%  { background: #33CC36; }
  100% { background: #33CCCC; }
}
</style>
<meta charset="ISO-8859-1">
<title>EMS</title>
</head>
<style>
body {
  background: #33CCCC; /* Fallback */
  animation: color 9s infinite linear;
  text-align: center;
  padding: 2em;
}
</style>

<center>

<form action="delete">
<b>Enter ID To Delete : </b><input type="text" name="id">
<input type="submit" value="Delete"><br><br>

<a href="index.jsp" class="button-36">Goto Home</a><br><br><br>

</form>
</center>
</body>
</html>