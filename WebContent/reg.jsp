<%@ page language="java" import="java.util.*,java.text.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style type="text/css">
  .label{
     width:20%
    }
  .controler{
    
     width:80%}

</style>
 <script type="text/javascript" src="js/Calendar3.js"></script>
</head>
<body>
   <h1>用户注册</h1>
   <hr>
   <form action="servlet/RegServlet" method="post">
       <table  border="0" width="800" cellspacing="0" cellpadding="0" border="1">
           <tr>
              <td class="label">用户名：</td>
              <td class="controler"><input type="text" name="username" value=""/></td> 
           </tr>
          
           <tr>
              <td class="label"> 密码：</td>
              <td class="controler"><input type="password" name="password" value=""/></td> <br> 
           </tr>
        
           <tr>
             <td class="label"> 确认密码：</td>
             <td class="controler"><input type="password" name="password" value=""/></td> 
           </tr>
          
           <tr>
             <td class="label"> 电子邮箱：</td>
             <td class="controler"><input type="text" name="email" value=""/></td>   
           </tr>
          
           <tr>
              <td class="label"> 性别：</td>
              <td class="controler"><input type="radio" name="gender" value="male" checked/>男
                <input type="radio" name="gender" value="female">女</td>  
           </tr>  
           <tr>
             <td class="label">出生日期：</td>
			 <td class="controler">
			   <input name="birthday" type="text" id="control_date" size="10"
                      maxlength="10" onclick="new Calendar().show(this);" readonly="readonly" />
			    	</td>   
           </tr>   
           <tr>
             <td class="label"> 爱好：</td>
             <td class="controler"><input type="checkbox" name="favorite" value="NBA"/>NBA
                  <input type="checkbox" name="favorite" value="music"/>音乐
                  <input type="checkbox" name="favorite" value="movie"/>电影
                  <input type="checkbox" name="favorite" value="mountaineering"/>登山
                  </td>  
          </tr>
         
          <tr>
             <td class="label"> 自我介绍：</td>
             <td class="controler">
             <textarea rows="10" cols="56"></textarea></td>
          </tr>  
          <tr>
             <td class="label">接受协议：</td>
             <td class="controler"><input type="checkbox" name="isAccept" value="true">是否接受条款协议 </td>
          </tr>
          <tr>
            <td colspan="2" align="center"><input type="submit" value="登陆 " />&nbsp;&nbsp;
            <input type="reset" value="重置"/>&nbsp;&nbsp;</td>
          </tr>
       </table>
       
   
   </form>
</body>
</html>