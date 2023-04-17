<%@page import="database.Utilities"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
    <center>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
              integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <title>Insert</title>
        <style>
            div {
                margin-bottom: 10px;
            }
            label {
                display: inline-block;
                width: 150px;
                text-align: right;
                color: black;
            }
        </style>

    </head>
    <%@include file="memu.jsp" %>
    <body>
        <%
            String check = request.getParameter("check");
            boolean ispostback;
            if (check == null) {
                ispostback = false;
            } else {
                ispostback = true;
            }
            String serialno = "", task = "", description = "", status = "", taskdate = "", Result = "";
            System.out.println(ispostback);
            if (ispostback) {
                try {
                    task = request.getParameter("task");
                    description = request.getParameter("description");
                    status = request.getParameter("status");
                    taskdate = request.getParameter("taskdate");
                    out.println(taskdate);
                    taskdate = taskdate.replace("T", "-");
                    PreparedStatement ps = database.DbConnect.connect().prepareStatement("insert into todo values(todoseq.nextval ,?,?,?,to_date(?,'yyyy-mm-dd-hh24:mi'))");
                    ps.setString(1, serialno);
                    ps.setString(1, task);
                    ps.setString(2, description);
                    ps.setString(3, status);
                    ps.setString(4, taskdate);
                    int n = ps.executeUpdate();
                    Result = "Inserted " + " records";
                    response.sendRedirect("inserttask.jsp");
                } catch (Exception ex) {
                    System.out.println(ex);
                    Result = ex.getMessage();
                }
            }
        %>
<h1>Todo</h1>
        <form method="post">
           <%=Result%>
            <input type="hidden"  name="check" value="1"><br>
            <br>

            <div class="container">
                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-6">

                        <div class="form-floating mb-3">
                            <input required name="task" type="text" class="form-control" id="floatingInput" placeholder="name@example.com"<%=task%>>
                            <label for="floatingInput">Task</label>
                            <div class="valid-feedback">
                            </div>
                        </div>
                        <div class="form-floating mb-3">
                            <input required name="description" type="text" class="form-control" id="floatingInput" placeholder="name@example.com"<%=description%>>
                            <label for="floatingInput">description</label>
                            <div class="valid-feedback">
                            </div>
                        </div>
                        <div class="form-floating mb-3">
                            <input required name="status" type="text" class="form-control" id="floatingInput" placeholder="name@example.com"<%=status%>>
                            <label for="floatingInput">status</label>
                            <div class="valid-feedback">
                            </div>
                        </div>
                        <div class="form-floating mb-3">
                            <input required name="taskdate" type="datetime-local" class="form-control" id="floatingInput" placeholder="name@example.com"<%=taskdate%>>
                            <label for="floatingInput">taskdate</label>
                            <div class="valid-feedback">
                            </div>
                        </div>
                        <br>
                        <input class="btn btn-primary" type="submit">
                        <input class="btn btn-danger" type="submit" value="clear">
                        <br>       
                        <br>
                        <%=Utilities.getTodoList()%>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        </form>
                        </body>
                        </html>
                        </center>
                        <%@include file="footer.jsp" %>