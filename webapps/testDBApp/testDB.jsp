	

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<sql:query var="rs" dataSource="jdbc/TestDB">
select user_name,role_name from user_roles
</sql:query>

<html>
  <head>
    <title>Test DataSource</title>
  </head>
  <body>

  <h2>Results</h2>

<c:forEach var="row" items="${rs.rows}">
    User ${row.user_name} Role ${row.role_name}<br/>
    
</c:forEach>

  </body>
</html>

