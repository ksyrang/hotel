<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<body>
<c:if test="${sessionScope.userId == null }">
	<script>
	alert("로그인 후 다시 이용해주세요.");
	location.href="${root }index?formpath=login";
	</script>
</c:if>
<div>
<%@ include file="admin/admin_header.jsp" %>
<c:import url="/${formpath }" />
<%@ include file="common/main_footer.jsp" %>

</div>

</body>
</html>