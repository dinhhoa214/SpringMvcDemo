    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
    <html>  
    <head>  
    <title>Being Java Guys | Spring DI Hello World</title>  
    <style>  
    body {  
     font-size: 20px;  
     color: teal;  
     font-family: Calibri;  
    }  
      
    td {  
     font-size: 15px;  
     color: black;  
     width: 100px;  
     height: 22px;  
     text-align: left;  
    }  
      
    .heading {  
     font-size: 18px;  
     color: white;  
     font: bold;  
     background-color: orange;  
     border: thick;  
    }  
    </style>  
    </head>  
    <body>   
        
       
       
     <b>Being Java Guys | Registration Form </b>   
      
        
       
       <form:form method="post" action="addAccount" modelAttribute="account">
			<table>
				<tr>
					<td>First Name :</td>
					<td><form:input path="name" /></td>
				</tr>
				<tr>
					<td>Time :</td>
					<td><form:input path="time" /></td>
				</tr>
				<tr>
					<td>Status :</td>
					<td><form:input path="status" /></td>
				</tr>
				<tr>
					<td>Is public :</td>
					<td><form:input path="isPublic" /></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Save" /></td>
				</tr>
			</table>
		</form:form> 
    </body>  
    </html>  