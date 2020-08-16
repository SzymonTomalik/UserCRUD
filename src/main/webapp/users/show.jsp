<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <%@ include file="/WEB-INF/headerHead.jspf" %>
    <title>SB Admin 2 - Show User</title>
</head>

<body id="page-top">

<%@ include file="/WEB-INF/header.jspf" %>

<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>
        <a href="<c:url value="/users/add"></c:url>"
           class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                class="fas fa-download fa-sm text-white-50"></i> Dodaj użytkownika</a>
    </div>


    <!-- Content Row -->
    <div class="row">
        <!-- User data -->
        <div class="card shadow mb-4" style="width: 100%">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Szczegóły użytkownika</h6>
            </div>
            <div class="card-body" style="width: 100%">
                <table class="table">
                    <tr>
                        <th>Id</th>
                        <td>${showUser.id}</td>
                    </tr>
                    <tr>
                        <th>Nazwa użytkownika</th>
                        <td>${showUser.userName}</td>
                    </tr>
                    <tr>
                        <th>Email</th>
                        <td>${showUser.email}</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</div>
<!-- /.container-fluid -->
<%@ include file="/WEB-INF/footer.jspf" %>

</body>
</html>