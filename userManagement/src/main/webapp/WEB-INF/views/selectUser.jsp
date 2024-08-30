<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%-- 조회되는 사용자의 ID --%>
  <title>${resultUser.userId} 사용자 상세 조회</title>
</head>
<body>
  <%-- 조회되는 사용자의 ID --%>
  <h1>${resultUser.userId} 사용자 상세 조회</h1>

  <hr>
  <table border="1">
    <tr>
      <th>사용자 번호</th>
      <td>${resultUser.userNo}</td>
    </tr>

    <tr>
      <th>아이디</th>
      <td>${resultUser.userId}</td>
    </tr>

    <tr>
      <th>비밀번호</th>
      <td>${resultUser.userPw}</td>
    </tr>

    <tr>
      <th>이름</th>
      <td>${resultUser.userName}</td>
    </tr>

    <tr>
      <th>등록일</th>
      <td>${resultUser.enrollDate}</td>
    </tr>
  </table>

  <div>
    <button id="updateBtn">수정</button>
    <button id="deleteBtn">삭제</button>
    <button id="goToList">목록으로 돌아가기</button>
  </div>

  <script src="/resources/js/selectUser.js"></script>
</body>
</html>