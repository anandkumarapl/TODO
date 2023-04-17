<%@page import="java.sql.ResultSet"%>
<%@page import="database.DbConnect"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <center><title>update</title>
    </head>
    <body>
        <%@include  file="memu.jsp" %>

        <%
            String check = request.getParameter("check");
            boolean ispostback;
            if (check == null) {
                ispostback = false;
            } else {
                ispostback = true;
            }
            String serialno = "", task = "", description = "", status = "", result = "";
            if (!ispostback) {
                serialno = request.getParameter("sno");
                task = request.getParameter("Task");
                description = request.getParameter("Description");
                status = request.getParameter("status");
                PreparedStatement ps = DbConnect.connect().prepareStatement("select * from todo where serialno=?");
                ps.setString(1, serialno);
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                    task = "" + rs.getObject("task");
                    description = "" + rs.getObject("description");
                    status = "" + rs.getObject("status");
                     
                }
            }
            System.out.println(ispostback);

            if (ispostback) {
                try {
                    serialno = request.getParameter("serialno");
                    task = request.getParameter("task");
                    description = request.getParameter("description");
                    status = request.getParameter("status");
                    PreparedStatement ps = DbConnect.connect().prepareStatement("UPDATE  todo SET task=?,description=?,status=? where serialno=?");
                    ps.setString(1, task);
                    ps.setString(2, description);
                    ps.setString(3, status);
                    ps.setString(4, serialno);
                    int n = ps.executeUpdate();
                    result = "Update" + n + " records";
                } catch (Exception ex) {
                    System.out.println(ex);
                    result = ex.getMessage();
                }
            }

        %>
        <h1>Update ToDo</h1>
        <form method="post">
            <h3><%=result%></h3>
            <input type="hidden"  name="check" value="1">
            <div class="container">
                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-6">
                        <input value="<%=serialno%>" autocomplete="off" name="serialno" type="hidden">

                        <br>
                        <div class="form-floating mb-3">
                            <input value="<%=task%>" type="text" class="form-control" id="floatingInput" placeholder="name@example.com"<%=task%>>
                            <label for="floatingInput">Task</label>
                        </div>
                        <br>
                        <div class="form-floating mb-3">
                            <input value="<%=description%>" type="text" class="form-control" id="floatingInput" placeholder="name@example.com"<%=description%>>
                            <label for="floatingInput">description</label>
                        </div>
                        <br>
                        <div class="form-floating mb-3">
                            <input value="<%=status%>" type="text" class="form-control" id="floatingInput" placeholder="name@example.com"<%=status%>>
                            <label for="floatingInput">status</label>
                        </div>
                        <br>
                        <input class="btn btn-primary" type="submit">
                        </body>
                        </form>
                                </html>
                        <%@include  file="footer.jsp" %>