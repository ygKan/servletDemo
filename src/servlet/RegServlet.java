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
     	doPost(request,response);//ʹdoGet()��doPost����
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//��ȡ������ ����Ҫ��ҳ����������ֻ����Ϊҳ����ת
		request.setCharacterEncoding("utf-8");
		Users u =new Users();//���� �û���ʵ�����
		String username,password,email,gender,introduce,isAccept;
		Date birthday;
		String[] favorites;
		
		//ʹ��SimpleDateFormatת��ҳ�������string��Ϊdate����
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		try
		{
			username=request.getParameter("username");
			password=request.getParameter("password");
			email=request.getParameter("email");
			gender=request.getParameter("gender");
			introduce=request.getParameter("introduce");
			//���ж�isAccept����ֵ�Ƿ�Ϊ��
			if(request.getParameterValues("isAccept")!=null)
			{
				isAccept=request.getParameter("isAccept");
			}
			else
			{
				isAccept="false";
			}
	
			//sdf.parse()�ɽ�Date����ת��ΪString��
			birthday=sdf.parse(request.getParameter("birthday"));
			//������ȡ�����ѡ��ť��ֵ
			favorites=request.getParameterValues("favorite");
			//��װ��ֵ
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
		
			//�ѳɹ�ע����û���Ϣ������session������
			request.getSession().setAttribute("RegUsers", u);
			//��ת���ɹ�ע��ҳ��
			request.getRequestDispatcher("../userinfo.jsp").forward(request, response);
				
		}
		catch(Exception ex)
		{
			ex.printStackTrace();//���ex��ַ
		}
	}

}
