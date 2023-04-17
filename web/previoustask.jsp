<%@page import="database.previoustask"%>
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
            String serialno = "", task = "", description = "", status = "", taskdate="",Result = "";
            System.out.println(ispostback);
            
            %>
            <form method="post">
            <h3><%=Result%></h3>
            <input type="hidden"  name="check" value="1"><br>
            <br>
            
             <div class="container">
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">

                <div class="form-floating mb-3">
                 
                </div>
             <div class="form-floating mb-3">
                
                </div>
             <div class="form-floating mb-3">
                    
                </div>
              <div class="form-floating mb-3">
                  
                </div>
            <%=previoustask.getTask()%>
            </body>
        </form>
</center>>
        </html>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
    <%@include file="footer.jsp" %>
