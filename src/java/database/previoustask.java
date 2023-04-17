package database;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class previoustask {
    public static String getTask() {
        try {
            String output = "<center>\n<table class=\" shadow-lg table table-striped table-hover \" border='1'>\n";
            output += "<tr><th>SNo </th><th>Task </th><th>Description </th><th>Status </th><th>Date </th><th>Delete </th><th>Update </th></tr>\n";
            PreparedStatement ps = DbConnect.connect().prepareStatement("select   serialno,task,description,status,to_char(taskdate,'dd-Mon-yyyy-hh24:mi') as taskdate from todo where taskdate<sysdate order by serialno desc");
                        ResultSet rs = ps.executeQuery();
            int count = 1;
            while (rs.next()) {
                String serialno = "" + rs.getObject("serialno");
                String task = "" + rs.getObject("task");
                String description = "" + rs.getObject("description");
                String status = "" + rs.getObject("status");
                String date = "" + rs.getObject("taskdate");
                output += "<tr><td>" + count + " </td><td>" + task + " </td><td>" + description + " </td><td>" + status + " </td><td>" + date + " </td><td><a href='delete.jsp?sno=" + serialno + "' target='_blank' title='delete this'><center><i  style='color:red;' class=\"fa fa-trash  fa-solid\"></i></center></a></td><td><a href='updatetask.jsp?sno=" + serialno + "' target='_blank'  title='update this'><center><i class=\"fa fa-edit  fa-solid\"></i></center></a></td></tr>\n";

                count++;
            }
            output += "</table>\n</center>\n";
            return output;

        } catch (Exception ex) {
            System.out.println(ex);
            return "";
        }}
}
