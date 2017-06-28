<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
	application.setAttribute("appAttribute", "foo");
	pageContext.setAttribute("pageAttribute", "bar");
	session.setAttribute("sessionAttribute", "sand");
	request.setAttribute("requestAttribute", "castle");
%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Information</title>
</head>
<body>
	Remote Address: ${pageContext.request.remoteAddr}<br/>
	Request URL: ${pageContext.request.requestURL }<br/>
	Session ID: ${pageContext.request.session.id }<br/>
	Application Scope: ${applicationScope["appAttribute"] }<br/>
	Page Scope: ${pageScope["pageAttribute"] }<br/>
	Session scope: ${sessionScope["sessionAttribute"] }<br/>
	Request Scope: ${requestScope["requestAttribute"] }<br/>
	User Parameter: ${param["user"] }<br/>
	color Multi-Param: ${fn:join(paramValues["colors"], ', ') }<br/>
	Accept Header: ${header["Accept"] }<br/>
	Session ID Cookie Value: ${cookie["JSESSIONID"].value }<br/>
</body>
</html>