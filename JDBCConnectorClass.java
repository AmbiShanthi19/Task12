

package task12;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;



public class JDBCConnectorClass {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String db_url="jdbc:mysql://localhost:3306";
		String username="root";
		String password="root";
		
		try {
			Connection connection = DriverManager.getConnection(db_url, username, password);
			
			//Step 3: Perform operation
			
			// Create the statements
			String createDB="create database JDBC_Task2";
			String useDB="use JDBC_Task2";
			String createTable="create table Task2_table (empcode int unique, name varchar(20), empage int,esalary decimal(10,4))";
			String insertValue="insert into Task2_table values (101,'Jenny',25, 10000)";
			String insertValue1="insert into Task2_table values (102,'Jacky',30, 20000)";
			String insertValue2="insert into Task2_table values (103,'Joe',20, 40000)";
			String insertValue3="insert into Task2_table values (104,'John',40, 80000)";
			String insertValue4="insert into Task2_table values (105,'Shameer',25, 90000)";
			String select ="Select * from Task2_table";
			
			Statement smt = connection.createStatement();
			
			//Step 4: Execute the statements
			smt.execute(createDB);
			smt.execute(useDB);
			smt.execute(createTable);
			smt.executeUpdate(insertValue);
			smt.executeUpdate(insertValue1);
			smt.executeUpdate(insertValue2);
			smt.executeUpdate(insertValue3);
			smt.executeUpdate(insertValue4);
			smt.executeQuery(select);
			
			
			// Step 5: close the connection
			connection.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
