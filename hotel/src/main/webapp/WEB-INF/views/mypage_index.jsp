<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<body>
<c:if test="${sessionScope.alertMsg != null}">
	<script>
		alert(sessionScope.alertMsg);
	</script>
</c:if>
<div>
<%@ include file="common/main_header.jsp" %>
<c:import url="/${formpath }" />
<%@ include file="common/main_footer.jsp" %>

</div>

</body>
</html>