<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${not empty msg }">
	<script>alert("${msg}");</script>
</c:if>
<center>
<h3>
	<font color="red" >${msg } </font>
</h3>
<table>
	<tr>
		<td align="center">
			<img class="img" width="1520" height="500" src="${pageContext.request.contextPath}/images/contents/main/MAIN_HUB/ShinNanDaMain2.jpg" alt="[서울신라호텔] Rewards Urban Island - 따스한 햇살이 드리우는 어번 아일랜드 온수풀에서 봄날의 휴식을 즐겨보세요." draggable="false">
			<%-- <img class="img" width="100%;" height="500" src="${pageContext.request.contextPath}/images/contents/main/MAIN_HUB/ShinNanDaMain2.jpg" alt="[서울신라호텔] Rewards Urban Island - 따스한 햇살이 드리우는 어번 아일랜드 온수풀에서 봄날의 휴식을 즐겨보세요." draggable="false"> --%>
		</td>
	</tr>
</table> 

</center>
