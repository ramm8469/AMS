<%@page import="com.ams.dao.*" %>
<%@page import="com.ams.model.Attendance" %>
<%@page import="java.util.*" %>
<center><h1>Total Attendence</h1></center>
<body>
<%
int id =(int) session.getAttribute("uid");
User_DAO dao = new User_DAO_Impl();
List<Attendance> list = dao.getAttendanceByUid(id);
for(Attendance attend : list){
	%>
	<table>
	<tr>
	<td>
	Date
	</td>
	<td>
	
	</td>
	</tr>
	<tr>
	<td>
	Attendance : 
	</td>
	<td>
	<%=attend.getDaily_attendance() %>%
	</td>
	</tr>
	</table>
	
	
<%	
}
%>
</body>