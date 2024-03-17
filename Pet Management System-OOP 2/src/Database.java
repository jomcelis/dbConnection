import java.sql.*;

import net.proteanit.sql.DbUtils;
import javax.swing.*;

public class Database {
	private Connection conn = null;
    private Statement st = null;
    private ResultSet rs = null;


    private String SQl ="";
    private String strConn="jdbc:mysql://localhost:3306/";

    public void DB_Connection(String db_name){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            strConn += db_name;
            conn = DriverManager.getConnection(strConn,"root","");
            System.out.println("Connection Successful");
        } catch(Exception e){
            System.out.println("Error 101: DB_Connection");
        }
    }

    public void displayRecords(String strQuery, JTable table){
        try{
            st=conn.createStatement();
            rs=st.executeQuery(strQuery);
            table.setModel(DbUtils.resultSetToTableModel(rs));
        } catch (SQLException e) {
            System.out.println("Error 102: displayRecords\n " +e.getMessage());
        }
    }


}

