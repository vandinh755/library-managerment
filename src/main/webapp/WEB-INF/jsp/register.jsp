    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 
    Document   : addNew
    Created on : 15-07-2020, 08:38:31
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link href="<c:url value='/resources/register/recss.css'/>" rel="stylesheet">
         <link href="<c:url value='/resources/register/rejs.css'/>" rel="stylesheet">
    </head>
    <body>
             <div class="login-container">
        <section class="login" id="login">
            <header>
                    <h2>Register</h2>
            </header>
                <mvc:form  modelAttribute="student" action="addnewStudent" method="post">
                 <mvc:input type="text" class="login-input" path="studentName" placeholder="Student name" required="true"/>
                <mvc:input type="text"  class="login-input" path="studentClassr" placeholder="Student Classr" required="true" autofocus="true"/>
                 <mvc:input type="text"  class="login-input" path="address" placeholder="Address" required="true" autofocus="true"/>    
                 <mvc:input type="text"  class="login-input" path="city" placeholder="City" required="true" autofocus="true"/>    
                  <mvc:select type="text"  class="login-input" path="sex" items="${sex}" placeholder="sex" required="true" autofocus="true"/>
                  <mvc:input type="date"  class="login-input" path="birDate" placeholder="BirthDate" required="true" autofocus="true"/> 
                 <mvc:input type="text"  class="login-input" path="user.userName"  placeholder="User" required="true" autofocus="true"/> 
                <mvc:input type="password" class="login-input" path="user.password" placeholder="Password" required="true"/>
                <mvc:input type="password" class="login-input" path="" placeholder="Enter the password" required="true"/>
                <div class="submit-container">
                <button type="submit" class="login-button">SIGN UP</button>
                </div>
            </mvc:form>
            </section>            
            </div>
        <button id="e1"><a href="${pageContext.request.contextPath}/login">Login</a></button>
    </body>
</html>

                