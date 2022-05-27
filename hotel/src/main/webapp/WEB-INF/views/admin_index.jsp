<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<body>

<div>
<%@ include file="admin/admin_header.jsp" %>
<c:import url="/${formpath }" />
<%@ include file="common/main_footer.jsp" %>

</div>

</body>
</html>