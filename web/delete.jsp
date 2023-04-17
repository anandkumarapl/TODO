<%@page import="java.sql.ResultSet"%>
<%@page import="database.DbConnect"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search and Delete</title>
    </head>
    <body>
        <center>
            <%@include  file="memu.jsp" %>

        <%
            String check = request.getParameter("check");
            boolean ispostback;
            if (check == null) {
                ispostback = false;
            } else {
                ispostback = true;
            }
//out.println(ispostback);
            String option = "", serialno = "", task = "", description = "", status = "",result="";
            if(!ispostback)
            {
                serialno = request.getParameter("sno");
                    PreparedStatement ps = DbConnect.connect().prepareStatement("select * from todo where serialno=?");
                    ps.setString(1, serialno);
                    ResultSet rs = ps.executeQuery();
                    if (rs.next()) {
                        task = "" + rs.getObject("task");
                        description = "" + rs.getObject("description");
                        status = "" + rs.getObject("status");
                    }
            }
            if (ispostback) {
                option = request.getParameter("option");
                // out.println(option);
         
                if (option.equals("Delete")) {
                    out.println("Delete Code");
                    
                    serialno = request.getParameter("serialno");
                    PreparedStatement ps = DbConnect.connect().prepareStatement("delete from todo where serialno=?");
                    ps.setString(1, serialno);
                    int n=ps.executeUpdate();
                     result="Deleted " + n + " records";
                     response.sendRedirect("inserttask.jsp");
                   
            }
            }
        %>
    <center>
        <%=result%>
        <h1> Todo List Search and Delete </h1>

        <form method="post">
            <input type="hidden" name="check"/>
            <br>
            <br>
            <div class="container">
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                
            <input value="<%=serialno%>" autocomplete="off" name="serialno" type="hidden">
            <br>
            <div class="form-floating mb-3">
                    <input value="<%=task%>" type="task" class="form-control" id="floatingInput" placeholder="name@example.com">
                    <label for="floatingInput">Task</label>
                </div>
            <br>
             <div class="form-floating mb-3">
                    <input value="<%=description%>" type="description" class="form-control" id="floatingInput" placeholder="name@example.com">
                    <label for="floatingInput">description</label>
                </div>
            <br>
             <div class="form-floating mb-3">
                    <input value="<%=status%>" type="taskstatus" class="form-control" id="floatingInput" placeholder="name@example.com">
                    <label for="floatingInput">status</label>
                </div>
            <br>
            <br>
 

            <input class="btn btn-danger" type="submit" name="option" value="Delete"/>
        </form>
    </center>
</body>
</html>
            <%@include  file="footer.jsp" %>