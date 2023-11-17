<%@ page contentType="text/html;charset=UTF-8" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<html>
<head>
	<!-- Javascript API and Frameworks -->
	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
	<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
	<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
	
	<%--  Web Components --%>
	<script type="module" src="https://1.www.s81c.com/common/carbon/web-components/tag/v2/latest/data-table.min.js"></script>
	<script type="module" src="https://1.www.s81c.com/common/carbon/web-components/tag/v2/latest/button.min.js"></script>

	<link rel="stylesheet" href="/views/customer/fragments/init.css" />
	<link rel="stylesheet" href="/views/customer/fragments/header.css" />
	<link rel="stylesheet" href="/views/customer/fragments/footer.css" />

                                                                                                      
	<title>자바코딩즈</title>
	<link rel="stylesheet" href="/resources/css/landing.css" />
	<script src="/resources/scripts/landing.js"></script>
</head>
<body>
<%@ include file="/views/customer/fragments/header.jsp" %>
<main>
<form action="noticepage?flag=insert" name="noticeForm" method="post">
<table>

	<thead>
		<tr>
			<th colspan="2">공지사항</th>
		</tr>
	</thead>
	
	<tbody>
		<tr>
			<td class="col1">공지사항번호</td>
			<td class="col2">
			<input type="text" name="noti_no" readonly="readonly" value="${notice.notice_id}">
			</td>
		</tr>
		<tr>
			<td class="col1">제목</td>
			<td class="col2">
			<input type="text" name="subject" readonly="readonly" value="${notice.label}">
			</td>
		</tr>
		<tr>
			<td class="col1">내용</td>
			<td class="col2">
			<textarea readonly="readonly" rows="10" cols="30" name="content" style="resize: none;">${notice.content}</textarea>
		</td>
		</tr>
		<tr>
			<td class="col1">작성일자</td>
			<td class="col2"><input type="text" name="regdate" readonly="readonly" value="${notice.reg_date}">
		</td>
			
		</tr>
	
	</tbody>
	<tfoot>
		<tr>
			<td colspan="3">
				<button type="button" onclick="location.href='/noticelist'">공지사항 목록</button>
			</td>
		
		</tr>
	</tfoot>

</table>

</form>
</main>
<%@ include file="/views/customer/fragments/footer.jsp" %>
</body>
</html>