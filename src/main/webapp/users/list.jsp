<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--header--%>
<%@ include file="/WEB-INF/header.jspf" %>

<div class="container-fluid">

  <!-- Page Heading -->
  <div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>
    <a href="<c:url value="/users/add"></c:url>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
          class="fas fa-download fa-sm text-white-50"></i> Add New User</a>
  </div>


  <!-- Content Row -->
  <div class="row">
    <!-- User data -->
    <div class="card shadow mb-4" style="width: 100%">
      <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Users List</h6>
      </div>
      <table class="table">
        <tr>
          <th>Id</th>
          <th>User Name</th>
          <th>Em@il</th>
          <th>Action</th>
        </tr>
        <c:forEach items="${users}" var="user">
          <tr>
            <td>${user.id}</td>
            <td>${user.userName}</td>
            <td>${user.email}</td>
            <td>
              <a href="<c:url value="/users/delete?id=${user.id}"/>">Delete</a>
              <a href="<c:url value="/users/edit?id=${user.id}"/>">Edit</a>
              <a href="<c:url value="/users/show?id=${user.id}"/>">Details</a>
            </td>
          </tr>
        </c:forEach>
      </table>
    </div>
  </div>
</div>
<!-- /.container-fluid -->
<%@ include file="/WEB-INF/footer.jspf" %>

</body>

</html>