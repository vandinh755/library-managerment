<%-- 
    Document   : login
    Created on : 01-12-2020, 11:10:19
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <!-- fa pls -->
        <link href="<c:url value='/resources/login/logincss.css'/>" rel="stylesheet">
    </head>
    <body>
 <div class="login-wrap">
	<div class="login-html">
		<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
                <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Libary </label>
		<div class="login-form">
                    <form  action="j_spring_security_check" method="post">
			<div class="sign-in-htm">
				<div class="group">
					<label  class="label">Username</label>
					<input id="user"  name="username" type="text" class="input">
				</div>
				<div class="group">
					<label  class="label">Password</label>
					<input  type="text" name="password" class="input" data-type="password">
				</div>
				<div class="group">
					<input id="check" type="checkbox" class="check" checked>
					<label for="check"><span class="icon"></span> Keep me Signed in</label>
				</div>
				<div class="group">
					<input type="submit" class="button" value="Sign In">
				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
					<a href="${pageContext.request.contextPath}/register">registration</a>
				</div>
			</div>
                    </form>
			</div>
		</div>
	</div>
    <c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION}">
            <p style="color:red;">Error:
                <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}"/></p>
    </c:if>
    </body>
</html>
