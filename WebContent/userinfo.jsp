<%@ page language="java" import="java.util.*,java.text.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style>
  .title{
    width:30%;
    background-color:#CCC;
    font-weight:bold;
    
  }
  .centent{
  width:70%;
  background-color:#CBCFE5;
}
</style>

</head>
<body>
   
   <h1>用户信息：</h1>
   <hr>
   <center>
   <!-- 实例化对象来接收信息 -->
   <jsp:useBean id="RegUsers" class="entity.Users" scope="session">
      <table   width="800" cellspacing="0" cellpadding="0" border="1" >
           <tr>
              <td class="title">用户名：</td>
              <td class="content">&nbsp;<jsp:getProperty property="username" name="RegUsers"/>  </td>
           </tr>
           <tr>
              <td class="title"> 密码：</td>
              <td class="content">&nbsp;<jsp:getProperty property="password" name="RegUsers"/> </td>
           </tr>
           <tr>
             <td class="title"> 电子邮箱：</td>
             <td class="content">&nbsp;<jsp:getProperty property="email" name="RegUsers"/> </td> 
           </tr>
           <tr>
              <td class="title"> 性别：</td>
              <td class="content">&nbsp;<jsp:getProperty property="gender" name="RegUsers"/> </td> 
           </tr>
            <tr>
             <td class="title"> 出生日期：</td>
             <td class="content">&nbsp;    
             <%
              SimpleDateFormat sdf =new SimpleDateFormat("yyyy年MM月dd日");
              String date=sdf.format(RegUsers.getBirthday());
             %>
              <%=date %>    
             </td>  
           </tr>   
           <tr>
             <td class="title"> 爱好：</td>
             <td class="content">&nbsp;
             <%
              String[] favorites=RegUsers.getFavorites();
              for(String f:favorites)
              {
             %>
               <%=f %>
             <%
              }
             %>
             </td>  
          </tr>
          <tr>
             <td class="title"> 自我介绍：</td>
             <td class="content">&nbsp;<jsp:getProperty property="introduce" name="RegUsers"/> </td>
          </tr>
          <tr>
             <td class="title"> 接受协议：</td>
             <td class="content">&nbsp;<jsp:getProperty property="flag" name="RegUsers"/> </td>
          </tr>
       </table>
      </jsp:useBean>
    </center>
</body>
</html>