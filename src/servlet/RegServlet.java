package servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.Users;

public class RegServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
     	doPost(request,response);//使doGet()做doPost方法
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//获取表单数据 不需要给页面输出结果，只是作为页面跳转
		request.setCharacterEncoding("utf-8");
		Users u =new Users();//创建 用户类实体对象
		String username,password,email,gender,introduce,isAccept;
		Date birthday;
		String[] favorites;
		
		//使用SimpleDateFormat转化页面输入的string型为date类型
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		try
		{
			username=request.getParameter("username");
			password=request.getParameter("password");
			email=request.getParameter("email");
			gender=request.getParameter("gender");
			introduce=request.getParameter("introduce");
			//先判断isAccept的组值是否为空
			if(request.getParameterValues("isAccept")!=null)
			{
				isAccept=request.getParameter("isAccept");
			}
			else
			{
				isAccept="false";
			}
	
			//sdf.parse()可将Date类型转化为String类
			birthday=sdf.parse(request.getParameter("birthday"));
			//用来获取多个复选按钮的值
			favorites=request.getParameterValues("favorite");
			//封装赋值
			u.setUsername(username);
			u.setPassword(password);
			u.setEmail(email);
			u.setGender(gender);
			u.setBirthday(birthday);
			u.setFavorites(favorites);
			u.setIntroduce(introduce);
	
			if(isAccept.equals("true"))
			{
				u.setFlag(true);
			}
			else
			{
				u.setFlag(false);
			}
		
			//把成功注册的用户信息保存在session对象中
			request.getSession().setAttribute("RegUsers", u);
			//跳转到成功注册页面
			request.getRequestDispatcher("../userinfo.jsp").forward(request, response);
				
		}
		catch(Exception ex)
		{
			ex.printStackTrace();//输出ex地址
		}
	}

}
