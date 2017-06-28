<%@ page import="java.util.ArrayList"%>
<%@ page import="user.stream.User"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%
	ArrayList<User> users = new ArrayList<>();
	users.add(new User(19384L, "Coder314", "John", "Smith"));
	users.add(new User(19383L, "addd311", "Joe", "Smith"));
	users.add(new User(19382L, "erer333", "Kim", "Dohtut"));
	users.add(new User(19381L, "cool444", "Adam", "Fisher"));
	request.setAttribute("users", users);
%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Collections and Streams</title>
</head>
<body>${users.stream()
		.filter(u -> fn:contains(u.userName, '1'))
		.sorted((u1, u2) -> (x = u1.lastName.compareTo(u2.lastName);
			x == 0 ? u1.firstName.compareTo(u2.firstName) : x))
		.map(u -> {'userName':u.userName, 'first':u.firstName, 'last':u.lastName})
	.toList()}

</body>
</html>