<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="col-md-3">
	<ul id="sidebar-nav" class="sidebar-nav margin-bottom-30px">
<<<<<<< HEAD
		<li class="list-group-item"><a
		 href="${pageContext.request.contextPath}/center/geyo.action">개요</a></li>
		<li class="list-group-item"><a
			href="${pageContext.request.contextPath}/center/column.action">CEO 컬럼</a></li>		
=======
		<li class="list-group-item has-submenu ">
			<a href="#Notice" class="submenu-toggle" data-toggle="collapse" data-parent="sidebar-nav">공고등록</a>
			<ul id="Notice" class="list-unstyled collapse submenu ">
				<li><a href="ui-buttons.html">General Buttons</a></li>
				<li><a href="ui-button-groups.html">Button Groups</a></li>
			</ul>
		</li>
		<li class="list-group-item"><a href="${pageContext.request.contextPath}/center/column.action">CEO 컬럼</a></li>		
>>>>>>> b2427e2bedfde72307ed231ee7fe7acd8e484034
		<li class="list-group-item"><a
			href="${pageContext.request.contextPath}/center/history.action">연혁</a></li>
		
		<li class="list-group-item"><a
			href="${pageContext.request.contextPath}/center/facility.action">시설 및 장비</a></li>
		
		<li class="list-group-item"><a
			href="${pageContext.request.contextPath}/center/teacher.action">교수진 소개</a></li>
		
		<li class="list-group-item"><a
			href="${pageContext.request.contextPath}/center/joininfo.action">입학안내</a></li>
		
		<li class="list-group-item"><a
			href="${pageContext.request.contextPath}/center/awards.action">수상현황</a></li>
		
		<li class="list-group-item"><a
			href="${pageContext.request.contextPath}/center/road.action">찾아오시는 길</a></li>
		
	</ul>
</div>