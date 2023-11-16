<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<title>우리반 화이팅</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script type="text/javascript">
 
 
 
 
</script>
</head>
<body>

   <div class="container">
      <h2>학생정보</h2>

      <form class="form-inline" method="get" action="${root }/board/list" id="search">
     <div class="form-group">
      <input type="text" class="form-control" name="keyword" id="keyword" value="${Cri.keyword }">
      
      <button type="submit">검색 </button>
      </div>
      	
      	  
      
      </form>
      
    	<div class="panel-body">
         <table class="table table-bordered table-hover">
            <thead>
               <tr>
                  <th>이름</th>
                  <th>주소</th>
                  <th>학교</th>
                  <th>전공</th>
               </tr>
            </thead>
            <tbody>
               <c:forEach items="${hi}" var="hk">
                  <tr> 
                    <td style="text-align:right" class="getInfo">
                     <td>${hk.hname }</td>
                  </tr>
               </c:forEach>
            </tbody>
         </table> 
      </div>
   </div>

</body>