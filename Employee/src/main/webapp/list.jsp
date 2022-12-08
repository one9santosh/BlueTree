 <%@ page import="com.company.*" %>
    <%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
     <link rel="icon" type="image/x-icon" href="images/favicon.ico">

<style>
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
  height: 2rem;
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

body {
  background: #33CCCC; /* Fallback */
  animation: color 9s infinite linear;
  text-align: center;
  padding: 2em;
}
.contact-input {
  background-color: white;
  background-image: url('searchicon.png');
  background-position: 10px 10px;
  background-repeat: no-repeat;
  padding-left: 40px;
}
</style>

<center>


<%List<Employee> list=(List<Employee>)request.getAttribute("list");  %>
<table border="1" cellpadding = "10" cellspacing = "10" bordercolor = "red" bgcolor = "BlanchedAlmond" width="100%">
<tr><th>ID</th><th>Name</th><th>Email</th><th>DOB</th><th>Age</th><th>Salary</th><th>Status</th></tr>
<% for(Employee s:list){%>
<tr><td><%=s.getId() %></td><td><%=s.getName() %></td><td><%=s.getEmail()%></td><td><%=s.getDob()%></td><td><%=s.getAge() %></td><td><%=s.getSalary()%></td><td><%=s.getStatus() %></td></tr>
<%}%> <br><br>
</table><br><br>

<form action="delete.jsp">
<button type="submit" class="button-36" role="button">Delete</button> <br><br>
</form>

<form action="update.jsp">
<button type="submit" class="button-36" role="button">Update</button> <br><br>
</form>

<form action="home.jsp">
<button type="submit" class="button-36" role="button">Home</button>
</form>
</center>
</body>
</html>