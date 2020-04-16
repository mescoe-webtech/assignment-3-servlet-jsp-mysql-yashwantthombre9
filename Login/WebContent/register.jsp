<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   
<head>

<style>
VALIDATE {                                         
    margin-left: 70px; 
    font-weight: bold ; 
    float: left; 
    clear: left; 
    width: 100px; 
    text-align: left; 
    margin-right: 10px; 
    font-family:sans-serif,bold, Arial, Helvetica; 
    font-size:14px; 
} 
   
div {  
    box-sizing: border-box; 
    width: 100%; 
    border: 100px solid black; 
    float: left; 
    align-content: center; 
    align-items: center; 
} 
   
form {                                         
    margin: 0 auto; 
    width: 600px; 
}</style> 

</head>

<body bgcolor="cyan"> 


<script> 
function VALIDATE()                                    
{ 
    var name = document.forms["RegForm"]["username"];               
    var email = document.forms["RegForm"]["email"];    
    var phone = document.forms["RegForm"]["telephone"];  
   
    var password = document.forms["RegForm"]["password"];  
    
   
    if (name.value == "")                                  
    { 
        window.alert("Please enter your name."); 
        name.focus(); 
        return false; 
    } 
   
   
       
    if (email.value == "")                                   
    { 
        window.alert("Please enter a valid e-mail address."); 
        email.focus(); 
        return false; 
    } 
   
    if (phone.value == "")                           
    { 
        window.alert("Please enter your telephone number."); 
        phone.focus(); 
        return false; 
    } 
   
    if (password.value == "")                        
    { 
        window.alert("Please enter your password"); 
        password.focus(); 
        return false; 
    } 
   
 
   
    return true; 
}</script> 


<h1 style="text-align: center"> REGISTRATION FORM </h1>           
<form name="RegForm" action="register" onsubmit="return VALIDATE()" method="post">  
      
    <p>Username: <input type="text" size=65 name="username"> </p><br>
    <p> Password: <input type="text" size=65 name="password">  </p><br> 
    <p>E-mail Address: <input type="text" size=65 name="email">  </p><br> 
     
    <p>Telephone: <input type="text" size=65 name="telephone"> </p><br>   
    <input type="submit" >
           
    
        
</form> 
</body>

</html>