<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="root" value="${pageContext.request.contextPath }" />
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
   $(document).ready(function() {
      var result = '${result}';
      check(result); //result=vo.getIdx();

      $("#registerBtn").click(function() {
         location.href = "${root}/board/register";
      });
      
  
      
      //상세보기 get
      $(".moving").on("click",function(e){
         e.preventDefault();
         var idx=$(this).attr("href");  //idx 
         var tag="<input type='hidden' name='idx' value='"+idx+"'/>";
         pageFrm.append(tag);  //폼에 태그 추가함
         pageFrm.attr("action","${root}/board/get");
         pageFrm.submit();
      });
      
   });

   function check(result) {
      if (result == '') {
         return;
      }
      if (parseInt(result) > 0) {
         $(".modal-body").html(parseInt(result) + " 번 게시글이 등록되었습니다.");
      }
      $("#myModal").modal("show");
   }

   function del() {
      alert('삭제된 게시물입니다');
   }
</script>
</head>
<body>

   <div class="container">
      <h2>화이팅♥</h2>
      <c:if test="${empty mem }">
     
         <table class="table table-bordered table-hover">
            
               <tr>
                  <th>이름</th>
                  <th>내용</th>
                
               </tr>
            </thead>
            <c:forEach items="${hi }" var="hi">
               <tr>
                  <td>${hi.hclass }</td>
                  <td>${hi.hname }</td>
        
       
               </tr>
            </c:forEach>
             
           
  
         </table>
         <!-- 페이지 시작 -->
         <div class="pull-right">
            <ul class="pagination">
            <!-- 이전버튼 처리 -->
            <c:if test="${pageCre.prev }">
               <li class="paginate_button previous">
                  <a href="${pageCre.startPage-1}">이전</a>
               </li>
            </c:if>
            <!-- 페이지번호 처리 -->
            <c:forEach var="pageNum" begin="${pageCre.startPage }" end="${pageCre.endPage }">
                  <li class="paginate_button ${pageCre.cri.page==pageNum? 'active':'' }">
                  <a href="${pageNum}">${pageNum }</a></li>
            </c:forEach>
            <!-- 다음버튼 처리 -->
            <c:if test="${pageCre.next }">
               <li class="paginate_button next">
                  <a href="${pageCre.endPage+1}">다음</a>
               </li>
            </c:if>
         </ul>
      </div>
      
      <!-- 마지막 -->
      <form id="pageFrm" action="${root }/board/list" method="get">
      <!-- 게시물 번호 -->
         <input type="hidden" id="page" name="page" value="${pageCre.cri.page }"/>
         <input type="hidden" id="perPageNum" name="perPageNum" value="${pageCre.cri.perPageNum }"/>
      </form>
            <!-- Modal -->
            <div id="myModal" class="modal fade" role="dialog">
               <div class="modal-dialog">

                  <!-- Modal content-->
                  <div class="modal-content">
                     <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Modal Header</h4>
                     </div>
                     <div class="modal-body"></div>
                     <div class="modal-footer">
                        <button type="button" class="btn btn-default"
                           data-dismiss="modal">Close</button>
                     </div>
                  </div>

               </div>
            </div>





         
      </div>
   </div>

</body>
</html>